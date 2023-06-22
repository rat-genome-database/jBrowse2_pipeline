#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading Mouse 37 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="mm37";
ROOTDIR="/data/data/gff3/jbrowse2/Mouse/mm37"

../makeFasta.sh $ASSEMBLY "GRCm37 (Mouse)" fa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


