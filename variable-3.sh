#!/bin/bash

START_TIME=$(date +%s)
sleep 10
END_TIME=$(date +%s)

echo "Start time is $START_TIME , End time is $END_TIME"
TIME_SPENT=$END_TIME - $START_TIME
echo "Time spent is $TIME_SPENT"