#!/usr/bin/env bash

rand_sleep() {
    sleep $((RANDOM % 11))
    # sleep $(echo "scale=4; $RANDOM/32768" | bc)
}

start_docker() {
    docker compose up -d
    echo "-- run -----"
    docker exec python_bench_run pipenv install
    docker exec -d python_bench_run pipenv run python work.py
    echo "-- --- -----"
}

bad_kill_docker() {
    docker compose stop -t 0
}


setup() {
    if [ "$(docker compose ps -q python_bench)" ]; then
        docker compose down
    fi
    docker compose build > /dev/null 2>&1
}


main() {
    setup

    set +e
    # set -x +e
    for i in {1..10}
    do
        start_docker
        rand_sleep
        bad_kill_docker
    done
    set -e
}


main
