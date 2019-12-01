#!/bin/bash
PICT=$(cat ~/.fehbg | awk '{ print $4 }' | tr -d "'")

wal -i $PICT -o wal-set
