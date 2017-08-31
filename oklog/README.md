# oklog

```
docker-compose -f docker-stack.yml up -d
```

## Pipeline
```
all docker logs -> /var/run/docker.sock -> logspout -> oklog
```

## Get your logs out
```
oklog stream
// or just get the json part
oklog stream | sed -u 's|.*{|{|' | grep --line-buffered '^{'
```

### TODO:
- [ ] build a gliderlab/logspout with a json syslog adaptor
	- [ ] Redo build script/ dockerfile to use multistage docker builds in order to do everything locally
	- [ ] If `message`/`data` is json then unmarshal it into a json object in log
	- [ ] {"container": "stuff", "message": "stdout"}
	- [ ] {"container": "stuff", "message": { "key": "value", "key1": "valuething"} }
- [ ] filter logs to multiple oklog ingeststore's by product

