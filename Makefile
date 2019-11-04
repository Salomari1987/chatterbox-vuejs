# Makefile for chatterbox


build_backend:
	@echo 'Building backend image' $
	docker build -t backend:latest backend $
	@echo 'Build successful' $


build_frontend:
	@echo 'Building frontend image' $
	docker build -t client:latest client $
	@echo 'Build successful' $


start:
	@echo 'Make sure you have Docker version 18.02.0 or higher'
	@echo 'Did you run `make build_backend` and `make build_frontend` ever?'
	docker-compose up


start-build:
	@echo 'Make sure you have Docker version 18.02.0 or higher'
	@echo 'Did you run `make build_backend` and `make build_frontend` ever?'
	docker-compose up --build
