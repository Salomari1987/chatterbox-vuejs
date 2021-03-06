# Makefile for chatterbox


build_backend:
	@echo 'Building backend image' $
	docker build -t api:latest api $
	@echo 'Build successful' $


build_frontend:
	@echo 'Building frontend image' $
	docker build -t client:latest client $
	@echo 'Build successful' $


migrate_backend:
	@echo 'Building backend image' $
	docker-compose run --rm api python manage.py migrate $
	@echo 'Build successful' $


start:
	@echo 'Make sure you have Docker version 18.02.0 or higher'
	@echo 'Did you run `make build_backend` and `make build_frontend` ever?'
	docker-compose up


start-build:
	@echo 'Make sure you have Docker version 18.02.0 or higher'
	@echo 'Did you run `make build_backend` and `make build_frontend` ever?'
	docker-compose up --build
