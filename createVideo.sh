#!/bin/bash
FROM=1
TO=537
HERE=$(pwd)
for i in {1..585}; do echo "file '$HERE/Vids/seg-$i-v1-a1.ts'" >> mylist.txt; done
ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
