# oklog

```
docker-compose -f docker-stack.yml up -d
```

Pipeline
```
all docker logs -> /var/run/docker.sock -> logspout -> oklog
```

Get your logs out
```
oklog stream
// or just get the json part
oklog stream | sed -u 's|.*{|{|' | grep --line-buffered '^{'
```

TODO:
- [] build a gliderlab/logspout with a json syslog adaptor
- [] filter logs to multiple oklog ingeststore's by product
- [] 
