#!/bin/bash

input="/usr/share/dict/words"
MERKEL="O7v0C2lZ"
SCHOLZ="hVEumPED"
MAAS="XJwb3vQN"
ALTMAIER="xkoLaWW0"
SEEHOFER="0ngrMRaj"
BARLEY="Cl5hww4i"
HAIL=".OFMxzzD"
GIFFEY="Cx3h/d.G"
SCHEUER="S2QJ/DwC"
KLOECKNER="eAnz2eeh"
LEYEN="1aaPttrp"
SPAHN="tMznqlt9"
SCHULZE="C1rJw.uq"
KARLICZEK="UL8CSHra"
MUELLER="ltX9YS4X"
while IFS= read -r line
do
	HASH=$(openssl passwd -1 -salt "$MERKEL" "$line")
	echo $line $HASH >> merkel.txt
	HASH=$(openssl passwd -1 -salt "$SCHOLZ" "$line")
	echo $line $HASH >> scholz.txt
	HASH=$(openssl passwd -1 -salt "$MAAS" "$line")
	echo $line $HASH >> maas.txt
	HASH=$(openssl passwd -1 -salt "$ALTMAIER" "$line")
	echo $line $HASH >> altmaier.txt
	HASH=$(openssl passwd -1 -salt "$SEEHOFER" "$line")
	echo $line $HASH >> seehofer.txt
	HASH=$(openssl passwd -1 -salt "$BARLEY" "$line")
	echo $line $HASH >> barley.txt
	HASH=$(openssl passwd -1 -salt "$HAIL" "$line")
	echo $line $HASH >> hail.txt
	HASH=$(openssl passwd -1 -salt "$GIFFEY" "$line")
	echo $line $HASH >> giffey.txt
	HASH=$(openssl passwd -1 -salt "$SCHEUER" "$line")
	echo $line $HASH >> scheuer.txt
	HASH=$(openssl passwd -1 -salt "$KLOECKNER" "$line")
	echo $line $HASH >> kloeckner.txt
	HASH=$(openssl passwd -1 -salt "$LEYEN" "$line")
	echo $line $HASH >> leyen.txt
	HASH=$(openssl passwd -1 -salt "$SPAHN" "$line")
	echo $line $HASH >> spahn.txt
	HASH=$(openssl passwd -1 -salt "$SCHULZE" "$line")
	echo $line $HASH >> schulze.txt
	HASH=$(openssl passwd -1 -salt "$KARLICZEK" "$line")
	echo $line $HASH >> karliczek.txt
	HASH=$(openssl passwd -1 -salt "$MUELLER" "$line")
	echo $line $HASH >> mueller.txt
done < "$input"
echo "ende"

