docker run --rm -d --log-driver=journald --name uxtestnet1 -p8080-8081:8080-8081 -p8888:8888 -v $(pwd):/data uxtestnet-dfuse 2> /dev/null || echo "uxtestnet1 (services) already running"
