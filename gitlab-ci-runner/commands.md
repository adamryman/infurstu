
```
docker run -d --name gitlab-runner-config     -v /etc/gitlab-runner     busybox:latest     /bin/true
```

```
docker run -d --name gitlab-runner --restart always  -v /var/run/docker.sock:/var/run/docker.sock  --volumes-from gitlab-runner-config  --privileged gitlab/gitlab-runner:latest
```

concurrent = 0
check_interval = 0

[[runners]]
  name = "001_shared"
  url = "http://ezy7.space/"
  token = "025f8a3ba49f7d666600e161c84362"
  executor = "docker"
  [runners.docker]
    tls_verify = false
    image = "adamryman/docker:bash"
    privileged = true
    cache_dir = "cache"
    disable_cache = false
    volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
    shm_size = 0
  [runners.cache]
