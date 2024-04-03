#!/usr/bin/env bash

main() {
    pipenv install
    pipenv run python ./work.py &
    
    PID=$(pgrep -f ./work.py)
    if [ ! -z "$PID" ]; then
        echo "Killing my_script.py with PID $PID"
        kill -9 $PID
    else
        echo "Process not found"
    fi
}


for i in {1..10}
do
    main
    sleep 1
done