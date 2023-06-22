#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading panPan2 (Bonobo) **********"
echo "*****************************************************"
echo ""

ASSEMBLY="panPan2";
ROOTDIR="/data/data/gff3/Bonobo/bonobo2"

../makeFasta.sh $ASSEMBLY "panPan2 (Bonobo)" mfa

for dir in "$ROOTDIR"/*; do
   base=$(basename "$dir")
   echo "calling loadGFF.sh $dir $ASSEMBLY $base"
   ../loadGFF.sh "$dir" $ASSEMBLY "$base"
done

