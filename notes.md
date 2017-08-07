## Docker

[Compose file version 3 reference](https://docs.docker.com/compose/compose-file/)

[Docker Machine Overview](https://docs.docker.com/machine/overview/)
```
curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
```
[Start using docker-machine](https://docs.docker.com/machine/get-started/#use-machine-to-run-docker-containers)
```
 docker-machine create --driver virtualbox default
```
[Zaq? might like](https://docs.docker.com/machine/get-started-cloud/)

## Gitlab
[Using Docker Build (Docker in docker, or docker executor, or docker+machine)](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html)

[gitlab-ci-dispatcher](https://gist.github.com/adamryman/71ed9990a3970da0840ad13cf6ab1a57)

## Logging

oklog
[Logging v. instrumentation](https://peter.bourgon.org/blog/2016/02/07/logging-v-instrumentation.html)

[oklog](https://github.com/oklog/oklog)
