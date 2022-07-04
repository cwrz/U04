#!/bin/bash

pwlist="/export/home_17/cwoerz/cwoerz/se/u04/aufg-3/words"
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

angela="$1$O7v0C2lZ$E8qLtddshWTpEF9EJ8Nmi1"



echo -e "Bitte geben Sie den Namen der  Wordlist-Datei an:"
read wordlist

if [ -r "/export/home_17/cwoerz/cwoerz/se/u04/aufg-3/$wordlist" ]
then
	echo -e "\nDie Datei existiert"
else
	echo -e "\nDie Datei existiert nicht"
	exit
fi
while true
do
	echo -e "Von wem moechten Sie das Passwort cracken?\n"
	read INPUT
	case $INPUT in
		merkel)
			echo "Datei wird durchsucht..Bitte warten(dauert ewig)"
			while IFS= read -r line
        		do
                		merkel=$(openssl passwd -1 -salt "$AngelaMerkel" "$line")
				#echo "$merkel" "$line"
                		if [ "$merkel" = "$angela" ]
                		then
                        		echo "Das Pw von Angela Merkel ist $line"
					exit
                		fi
			done < "$pwlist" ;;
		Scholz)
			while read line
        		do
                		scholz=$(openssl passwd -1 -salt "$OlafScholz" "$line")
                		if [ "$scholz" = "$1$hVEumPED$w6afIaNNrvKfGFSsmCcHT/" ]
                		then
                        		echo "Das Pw von Olaf Scholz ist $scholz"
                		fi
			done < /usr/share/dict/words ;;
	esac
echo "datei fertig durchsucht"
done
