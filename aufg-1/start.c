#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#define ERR_INV_PARAM	"Ungueltiger Aufruf. Bitte programm %s argc1 arg2 ... argn verwenden. \n"
#define INFO_PROC_ID	"ProzessID gestartetes Programm ist %d\n"
#define INFO_CHLD_STAT	"Rueckgabewert Kindprozess ist %d.\n"

int main(int argc, char *argv[])
{
	pid_t processID = 0;
	int status = 0;

	if(argc < 3)
	{
		printf(ERR_INV_PARAM, argv[0]);
		return EXIT_FAILURE;
	}

	processID = fork();	//pid_t = fork()

	if(processID == -1)
	{
		perror(strerror(errno));
		return EXIT_FAILURE;
	}
	else if(processID == 0) // Kindprozess
	{
		// Priorität auf 0 setzen
		if(setpriority(PRIO_PROCESS, getpid(), 0) == -1)
		{
			perror(strerror(errno));
			return EXIT_FAILURE;
		}
		// Programm ausführen
		if(execvp(argv[1], argv+1) == -1) //Endung= Kommandoargumente + Dateiname werden erwartet
		{	//exec = keine aenderung der pid, sondern komplette ueberschreibung /ersetzen
			perror(strerror(errno));
			return EXIT_FAILURE;
		}
	}
	else // Parent
	{
		printf(INFO_PROC_ID, processID);
		//waitpid(-1, NULL, 0); //auf bestimmte pid warten (ein child)
		if(waitpid(processID, &status, 0) == -1)
		{
			perror(strerror(errno));
			return EXIT_FAILURE;
		}
		printf(INFO_CHLD_STAT, WEXITSTATUS(status));
		if(WIFSIGNALED(status) == 1)	// Ist TRUE, wenn der Kindprozess durch ein Signal terminiert wurde, das dieser nicht abgefangen hat.
		{
			psignal(WTERMSIG(status), NULL); //Damit können Sie die Nummer desSignals erfahren, die den Prozessabbruch bewirkt hat.
		}
	}

	return EXIT_SUCCESS;
}

