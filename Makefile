# Makefile for chatterbox


build_backend:
	@echo 'Building backend image' $
	docker build -t backend:latest backend $
	@echo 'Build successful' $
