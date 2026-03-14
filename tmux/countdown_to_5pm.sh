#!/usr/bin/env bash

S=$(date +%s)
WD=$(date +%u)  # 1=Mon .. 7=Sun

START=$(date -d "08:30" +%s)
END=$(date -d "17:00" +%s)

if [ "$WD" -ge 6 ]; then
    echo "weekend"
elif [ "$S" -ge "$END" ]; then
    echo "no work"
elif [ "$S" -ge "$START" ]; then
    R=$(( (END - S)/60 ))
    printf "%02d:%02d" $((R/60)) $((R%60))
fi
