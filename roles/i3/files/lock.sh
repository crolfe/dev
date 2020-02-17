#!/bin/bash

IMAGE=/tmp/screen.png
SCREENSHOT="scrot $IMAGE"

BLURTYPE="0x5"

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
i3lock -i $IMAGE

#rm $IMAGE
