# INFRA for small projects

## 1. Prerequisites

Install following
- docker
- docker-compose

## 2. Start

Run `./start.sh`. In case selinux is disabled in your system delete related lines in start script. Following apps are available:
- port 8000: [gitea](https://gitea.io) - version control system
- port 8001: [jenkins](https://jenkins.io) - CI/CD server
- port 8002: [sonar](https://www.sonarqube.org/) - continuous code quality server
- port 8003: [minio](https://www.minio.io/) - storage service

## 3. Config steps

- Configure **gitea**
    1. open `http://localhost:8000` choose postgres as DB. Host - db:5432, user - gites, password - gitea
- Configure **jenkins**
    1. in terminal from project root `cat data/jenkins/secrets/initialAdminPassword`
    3. open `http://localhost:8001`, follow onscreen instructions
    3. add host machine as jenkins node if you want to use pipelines
- Configure **sonar**:
    1. open `http://localhost:8002`, login as admin/admin.
    2. go to Administration->Configuration->TypeScript and enter "Rule Collection Name" - "TsLint" and "Path to tslint" - `/usr/bin/tslint` and save all
- Configure **minio**
    1. open `http://localhost:8002`, login as admin/admin (keys can be found in `docker-compose.yml`)
    3. no config is required 

## 4. Todo
- add sample backend project with jenkins pipeline
- add sample frontend project with jenkins pipeline
