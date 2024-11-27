# Docker container for jupyter notebook

Creates containerized notebook server on port 9999 with volume mounted to the parent of repository's directory so that it can access all files and directories on the same level as the repo.

To change the directory to mount:
   - Change the volumes list in [docker-compose.yml](docker-compose.yml) file.

To change the default port, in [docker-compose.yml](docker-compose.yml) file:
   - Change the `--port` paramter for jupyter notebook command in `command` field
   - Change `ports` fields in my-notebook service


# Steps to run jupyter notebook as a docker service

- Run `docker-compose build`
- Run `docker-compose up`

# Notes:

- Since docker configuration `restart: always` is set, whenever the docker service is run, it starts up the notebook service.
- To disable it, remove `restart: always` from the docker-compose.yml file
- Since token authentication is disabled, when logging in for the first time, provide empty token in the url while opening notebook first time: [localhost:9999/tree?token=""](localhost:9999/tree?token="")