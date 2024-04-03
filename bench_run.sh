#!/usr/bin/env bash


main() {
   if [ "$(docker-compose ps -q python_bench)" ]; then
        echo "skip"
    else
        docker-compose up -d python_bench
    fi

    # force shutdown docker
    sleep 10
    docker-compose down

    
}


docker build -t python_bench .

set -x
set +e

main

set -e
set +x

# for i in {1..10}
# do
#     main
#     sleep 1
# done