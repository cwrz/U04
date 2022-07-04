#!/bin/bash

pwlist="/export/home_17/cwoerz/cwoerz/se/u04/aufg-3/words"
AngelaMerkel="12345678"
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

Angela="$1$O7v0C2lZ$E8qLtddshWTpEF9EJ8Nmi1"
Olaf="$1$hVEumPED$w6afIaNNrvKfGFSsmCcHT/"
Heiko="$1$XJwb3vQN$PRjRzJVTB1PWIpw1M8uqO/"
Peter="$1$xkoLaWW0$bJib5w2vV9CClcSfsOjl20"
Horst="$1$0ngrMRaj$4mXDUbpsVQgyGpsRxiSy/1"
Katarina="$1$Cl5hww4i$01/df84sLOw83GqJfbT.A1"
Hubertus="$1$.OFMxzzD$yhGV2j9.sUpYEzHKPsoNd/"
Franziska="$1$Cx3h/d.G$PxUomtQgO/n9T0eGVweCH1"
Andreas="$1$S2QJ/DwC$1CWqAcPIUpBKbyR4S8o/W1"
Julia="$1$eAnz2eeh$Bzd4kfKMZkIvZ1KTTudQb1"
Ursula="$1$1aaPttrp$I2Ap/roBfRoWfx3BWRzZq."
Jens="$1$tMznqlt9$7ieEwjFr5tuMU4CXX2SFX0"
Svenja="$1$C1rJw.uq$1XBONI7qTNh1DHb5RBipv1"
Anja="$1$UL8CSHra$KRplQCo26heOxlqu3UuGR1"
Gerd="$1$ltX9YS4X$eNhKCEpH43Oz4SVYewY2J/"

echo -e "Bitte geben Sie den Namen der  Wordlist-Datei an:"
read wordlist

if [ -r "/export/home_17/cwoerz/cwoerz/se/u04/aufg-3/$wordlist" ]
then
	echo -e "\nDie Datei existiert"
else
	echo -e "\nDie Datei existiert nicht"
	exit
fi

echo "Datei wird durchsucht..Bitte warten(dauert ewig)"

while IFS= read -r line
 	do
    		merkel=$(openssl passwd -1 -salt "$AngelaMerkel" "$line")
				echo "$merkel" "$line"
      		if [ "$merkel" = '$1$12345678$7Rl3o/05lwkpAZo7PI5oB/' ]
          then
						echo "Das Pw von Angela Merkel ist $line"
						merkelpw="$line"
						#break
						exit
					fi

		 		scholz=$(openssl passwd -1 -salt "$OlafScholz" "$line")
				echo "$scholz" "$line"
				if [ "$scholz" = '$1$hVEumPED$w6afIaNNrvKfGFSsmCcHT/' ]
				then
					echo "Das Pw von Olaf Scholz ist $line"
					scholzpw="$line"
					#break
					#exit
				fi

				maas=$(openssl passwd -1 -salt "$HeikoxMaas" "$line")
				echo "$maas" "$line"
				if [ "$maas" = '$1$XJwb3vQN$PRjRzJVTB1PWIpw1M8uqO/' ]
				then
					echo "Das Pw von Heiko Maas ist $line"
					maaspw="$line"
					#break
					#exit
				fi

				altmaier=$(openssl passwd -1 -salt "$PeterxAltmaier" "$line")
				echo "$altmaier" "$line"
				if [ "$altmaier" = '$1$xkoLaWW0$bJib5w2vV9CClcSfsOjl20' ]
					then
						echo "Das Pw von Peter Altmaier ist $line"
						altmaierpw="$line"
						#break
						#exit
					fi

				seehofer=$(openssl passwd -1 -salt "$HorstxSeehofer" "$line")
				echo "$seehofer" "$line"
	      	if [ "$seehofer" = '$1$0ngrMRaj$4mXDUbpsVQgyGpsRxiSy/1' ]
	        then
						echo "Das Pw von Horst Seehofer ist $line"
						seehoferpw="$line"
						#break
						#exit
					fi

				barley=$(openssl passwd -1 -salt "$KatarinaxBarley" "$line")
				echo "$barley" "$line"
	      	if [ "$barley" = '$1$Cl5hww4i$01/df84sLOw83GqJfbT.A1' ]
	        then
						echo "Das Pw von Katarina Barley ist $line"
						barleypw="$line"
						#break
						#exit
					fi

				heil=$(openssl passwd -1 -salt "$HubertusxHeil" "$line")
				echo "$heil" "$line"
				if [ "$heil" = '$1$.OFMxzzD$yhGV2j9.sUpYEzHKPsoNd/' ]
				then
					echo "Das Pw von Hubertus Heil ist $line"
					heilpw="$line"
					#break
					#exit
				fi

				giffey=$(openssl passwd -1 -salt "$FranziskaxGiffey" "$line")
				echo "$giffey" "$line"
				if [ "$giffey" = '$1$Cx3h/d.G$PxUomtQgO/n9T0eGVweCH1' ]
				then
					echo "Das Pw von Franziska Giffey ist $line"
					giffeypw="$line"
					#break
					#exit
				fi

				scheuer=$(openssl passwd -1 -salt "$AndreasxScheuer" "$line")
				echo "$scheuer" "$line"
				if [ "$scheuer" = '$1$S2QJ/DwC$1CWqAcPIUpBKbyR4S8o/W1' ]
				then
					echo "Das Pw von Andreas Scheuer ist $line"
					scheuerpw="$line"
					#break
					#exit
				fi

				kloeckner=$(openssl passwd -1 -salt "$JuliaxKloeckner" "$line")
				echo "$kloeckner" "$line"
				if [ "$kloeckner" = '$1$eAnz2eeh$Bzd4kfKMZkIvZ1KTTudQb1' ]
				then
					echo "Das Pw von Julia Kloeckner ist $line"
					kloecknerpw="$line"
					#break
					#exit
				fi

				leyen=$(openssl passwd -1 -salt "$UrsulaxvonxderxLeyen" "$line")
				echo "$leyen" "$line"
				if [ "$leyen" = '$1$1aaPttrp$I2Ap/roBfRoWfx3BWRzZq.' ]
				then
					echo "Das Pw von Ursula von-der-Leyen ist $line"
					leyenpw="$line"
					#break
					#exit
				fi

				spahn=$(openssl passwd -1 -salt "$JensxSpahn" "$line")
				echo "$spahn" "$line"
				if [ "$spahn" = '$1$tMznqlt9$7ieEwjFr5tuMU4CXX2SFX0' ]
				then
					echo "Das Pw von Jens Spahn ist $line"
					spahnpw="$line"
					#break
					#exit
				fi

				schulze=$(openssl passwd -1 -salt "$SvenjaxSchulze" "$line")
				echo "$schulze" "$line"
				if [ "$schulze" = '$1$C1rJw.uq$1XBONI7qTNh1DHb5RBipv1' ]
				then
					echo "Das Pw von Svenja Schulze ist $line"
					schulzepw="$line"
					#break
					#exit
				fi

				karliczek=$(openssl passwd -1 -salt "$AnjaxKarliczek" "$line")
				echo "$karliczek" "$line"
				if [ "$karliczek" = '$1$UL8CSHra$KRplQCo26heOxlqu3UuGR1' ]
				then
					echo "Das Pw von Anja Karliczek ist $line"
					karliczekpw="$line"
					#break
					#exit
				fi

				mueller=$(openssl passwd -1 -salt "$GerdxMueller" "$line")
				echo "$mueller" "$line"
				if [ "$mueller" = '$1$ltX9YS4X$eNhKCEpH43Oz4SVYewY2J/' ]
				then
					echo "Das Pw von Gerd Mueller ist $line"
					muellerpw="$line"
					#break
					#exit
				fi

		#echo "$merkel" "$line" >> merkel.txt
	done < "$pwlist"
echo "datei fertig durchsucht"
echo "Angela Merkel:" "$merkelpw"
echo "Olaf Scholz:" "$scholzpw"
echo "Heiko Maas:" "$maaspw"
echo "Peter Altmaier:" "$altmaierpw"
echo "Horst Seehofer:" "$seehoferpw"
echo "Katarina Barley:" "$barleypw"
echo "Hubertus Heil:" "$heilpw"
echo "Franziska Giffey:" "$giffeypw"
echo "Andreas Scheuer:" "$scheuerpw"
echo "Julia Kloeckner:" "$kloecknerpw"
echo "Ursula von der Leyen:" "$leyenpw"
echo "Jens Spahn:" "$spahnpw"
echo "Svenja Schulze:" "$schulzepw"
echo "Anja Karliczek:" "$karliczekpw"
echo "Gerd Mueller:" "$muellerpw"
