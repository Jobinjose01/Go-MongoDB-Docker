## Usage

To get started, make sure you have [Docker installed](https://docs.docker.com/docker-for-mac/install/) on your system, and then clone this repository.

Next, navigate in your terminal to the directory you cloned this, and spin up the containers for the web server by running
 `docker-compose up -d --build`.


Bringing up the Docker Compose network with `site` instead of just using `up`, ensures that only our site's containers are brought up at the start, instead of all of the command containers as well. The following are built for our web server, with their exposed ports detailed:

- **Go** - `:4000`
- **Mongo** - `:27017`
- **Mongo-Express** - `:8081`

Access The Mongo Express 

`http://localhost:8081`

###MongoDB Storage

All the database data storage are mapped to you local folder mongo_storage

### Go MongoDB Connection String

`var conStr string = "mongodb://<user-name>:<password>@localhost:27017"`

`clientOptions := options.Client().ApplyURI(conStr)`


## Access The CLI

`docker ps`

`docker exec -it <container ID> /bin/sh` 

