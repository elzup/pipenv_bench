#!/usr/bin/env bash

pipenv install
pipenv run python ./work.py &

sleep 1

PID=$(pgrep -f ./work.py)
if [ ! -z "$PID" ]; then
    echo "Killing my_script.py with PID $PID"
    kill -9 $PID
else
    echo "Process not found"
fi
