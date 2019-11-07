# chatterbox-vuejs

## Setup
1. Make sure you have the [docker engine image 19](https://docs.docker.com/engine/release-notes/)
2. Install docker-compose version 3.7
3. **Build docker images**: with docker up and running on your local, from the root, run `make build_backend && make build_frontend`
4. run db service using `docker-compose up db`
5. migrate python models: `make migrate_backend`
6. stop db service and start docker-compose all at once
    - `docker-compose down`
    - `docker-compose up --build`
7. access the frontend on `localhost:3000` and api on `localhost:8000`

