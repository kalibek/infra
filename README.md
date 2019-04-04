# Infrastructure

This project allows to quickly organize you CI/CD pipeline with [gitea](https://gitea.io/en-us/), [drone](https://drone.io/) and [registry](https://docs.docker.com/registry/). This solution is not for production and aimed for small teams and projects.

### Prerequisites:
- installed `docker` and `docker-compose`. Guides can be found at official sites: https://docs.docker.com/. Or for ubuntu one can use `install-script.sh` from the root of the project

### Starting the project
- create file `.env` in the project's root. it should contain ip address of your docker-host. Or if you have DNS server up you can use dns-name
```bash
DC_HOST=127.0.0.1
```
1. run `docker-compose up -d`
2. open `http://your_docker_host:3000` in browser click `Sign In`. This will configure gitea server (Do not forget to create administrative account). Create git project(s)
3. open `http://your_docker_host` and login to drone server with gitea credentials. Activate required projects

### Sample project

There is sample project in the `sample` folder that does this:
- builds image and pushes to local insecure registry on commit to master
- starts docker compose with project on tag

### TODO
1. use secure registry 
