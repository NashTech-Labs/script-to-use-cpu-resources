#!/bin/bash
UNIT=1024
SIZE_IN_BYTES=1
GIGS='GB'
MIBS='MB'

echo "Enter size of the file you want to create (in MBs or GBs)"
echo "Supported formats: 10 MB, 20 MB, 5 GB , 20GB etc."
read SIZE
echo "You entered $SIZE"

if [[ "$SIZE" == *"$GIGS"* ]];
then
  newSize=${SIZE%% *}
  SIZE_IN_BYTES=$((newSize * UNIT * UNIT * UNIT))
  echo "Total file size in bytes: $SIZE_IN_BYTES"
  fallocate -l $((SIZE_IN_BYTES)) fakeTraffic.txt

elif [[ "$SIZE" == *"$MIBS"* ]];
then
  newSize=${SIZE%% *}
  SIZE_IN_BYTES=$((newSize * UNIT * UNIT))
  echo "Total file size in bytes: $SIZE_IN_BYTES"
  fallocate -l $((SIZE_IN_BYTES)) fakeTraffic.txt
  
else
  echo "Please enter file size in Megabytes or Gigabytes"
fi