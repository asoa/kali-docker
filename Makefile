.PHONY: build up down clean

build:
	@echo 'building kali'
	docker build --build-arg DB_CONFIG -t kali-rolling:top-ten kali/
	docker build --build-arg POSTGRES_PASSWORD --build-arg POSTGRES_CONFIG -t postgres:kali postgresql/
	
up:
	@echo 'starting containers'
	docker network create kali-net 
	docker run -d --network kali-net -p 5432:5432/tcp -e POSTRES_PASSWORD=$POSTRES_PASSWORD --name postgres postgres:kali
	docker run -it --network kali-net --name kali kali-rolling:top-ten 

down:
	@echo 'stopping containers'
	docker stop postgres

clean:
	@echo 'cleaning up networking and containers'
	./kali-clean.sh
	
