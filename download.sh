#!/bin/bash
STATIC_PART=https://tubepornclassic.ahcdn.com/key=oNitd+b3slejXEXOo3TXYQ,end=1624133337,limit=3/referer=none,.tubepornclassic.com,.gstatic.com/speed=0/min_speed=89121/media=hls/c1/videos/149000/149086/149086.mp4/
DINAMIC=seg-
TAIL=-v1-a1.ts
COUNTER=1
LIMIT=32

mkdir Vids
cd Vids

while [[ COUNTER < LIMIT+1 ]] 
do
	wget $STATIC_PART$DINAMIC$COUNTER$TAIL
	COUNTER=$((COUNTER+1))
done
