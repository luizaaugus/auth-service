SERVICE_BINARY=auth-service

## up: starts all containers in the background without forcing build
up:
	@echo "Starting Docker images..."
	docker compose up 
	@echo "service started ! check it using docker compose logs"

## up_build: stops docker compose (if running), builds project and start docker compose
build-up: 
	@echo "Stopping docker images (if running ..)"
	docker compose down 
	@echo "Builidng (when required) and starting docker image ..."
	docker compose up
	@echo "docker image built and started!"

## build locally
build-local:
	@echo "build the project locally. go need to be installed."
	go build -o auth-service ./cmd/app
	@echo "check built app"

## down : stop service
down: 
	@echo "stopping service using docker compose..."
	docker compose down
	@echo "done!"

