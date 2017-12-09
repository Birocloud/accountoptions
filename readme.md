## Docker

Following are the instruction on how to get the application up and running.

##### Classic way without docker compose

- run the postgres container

docker run -d --name postgres-accountoptions -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=accountoptions -p 5432:5432 postgres:latest

- move the api's **.jar** to the location of the Dockerfile
- build the image

docker build -t ao-api .

- run the container

docker run -d --name aoapi  -p 8080:8080 ao-api

### Caution

- Verify that config.yaml is in persistence/resources
- Verify that config.yaml states the dependency on postgres as docker.for.mac.localhost:5432
- Verify that Dockerfile exposes the correct port


##### With docker compose

- With docker compose you need to put this on the bridge network, otherwise it will not work.
- config.yaml should have dependency as docker.for.mac.localhost