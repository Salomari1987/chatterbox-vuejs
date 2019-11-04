# Makefile for chatterbox


build_backend:
	@echo 'Building backend image' $
	docker build -t backend:latest backend $
	@echo 'Build successful' $


build_frontend:
	@echo 'Building frontend image' $
	docker build -t client:latest client $
	@echo 'Build successful' $