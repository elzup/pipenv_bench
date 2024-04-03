#!/usr/bin/env bash

docker build -t python_bench .

main() {
    docker run -it --name python_bench_run python_bench

    # force shutdown docker
    docker kill python_bench_run
    
}

docker_run() {
    docker build .
}

main

# for i in {1..10}
# do
#     main
#     sleep 1
# done