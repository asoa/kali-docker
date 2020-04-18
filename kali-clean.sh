#!/bin/bash

if docker network ls | grep kali-net; then
	echo "removing kali-net"
	docker network rm kali-net

	echo "removing containers"
	for x in $(docker ps -aq); do docker rm $x; done
fi
