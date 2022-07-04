#!/bin/bash

AngelaMerkel="O7v0C2lZ"
OlafScholz="hVEumPED"
HeikoxMaas="XJwb3vQN"
PeterxAltmaier="xkoLaWW0"
HorstxSeehofer="0ngrMRaj"
KatarinaxBarley="Cl5hww4i"
HubertusxHeil=".OFMxzzD"
FranziskaxGiffey="Cx3h/d.G"
AndreasxScheuer="S2QJ/DwC"
JuliaxKloeckner="eAnz2eeh"
UrsulaxvonxderxLeyen="1aaPttrp"
JensxSpahn="tMznqlt9"
SvenjaxSchulze="C1rJw.uq"
AnjaxKarliczek="UL8CSHra"
GerdxMueller="ltX9YS4X"


echo -e "Bitte geben Sie den Namen der  Wordlist-Datei an:"
read wordlist

if [ -r "/export/home_17/cwoerz/cwoerz/se/u04/aufg-3/$wordlist" ]
then
	echo -e "\nDie Datei existiert"
else
	echo -e "\nDie Datei existiert nicht"
	exit
fi
echo -e "Von wem moechten Sie das Passwort cracken?\n"
	read INPUT
		while IFS= read -r LINE
        		do
                		merkel=$(openssl passwd -1 -salt "$AngelaMerkel" "$LINE")
				echo "$merkel"
                		if [ $merkel = "$1$O7v0C2lZ$E8qLtddshWTpEF9EJ8Nmi1" ]
                		then
                        		echo "Das Pw von Angela Merkel ist $LINE"
				else
					echo "Passwort nicht gefunden."
					exit
                		fi
		done < /export/home_17/cwoerz/cwoerz/se/u04/aufg-3/words
		Scholz)
			while read line
        		do
                		scholz=$(openssl passwd -1 -salt "$OlafScholz" "$line")
                		if [ "$scholz" = "$1$hVEumPED$w6afIaNNrvKfGFSsmCcHT/" ]
                		then
                        		echo "Das Pw von Olaf Scholz ist $scholz"
                		fi
			done < /usr/share/dict/words
	
