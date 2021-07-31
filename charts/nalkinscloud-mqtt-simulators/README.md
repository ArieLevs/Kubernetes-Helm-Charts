Installation
============

**IMPORTANT** - This deployment had a hardcoded container dependency,  
A mosquitto service must be up and reachable, below values must be reachable.  
```yaml
envVars:
  broker_host: thingsboard-mqtt-transport.thingsboard.svc.cluster.local
  broker_port: 8883
```
Install
```shell script
helm upgrade nalkinscloud-mqtt-simulators \
    --install nalkinscloud/nalkinscloud-mqtt-simulators \
    --namespace nalkinscloud-mqtt-simulators \
    --create-namespace
```

Alpha env installation
```shell script
helm upgrade nalkinscloud-mqtt-simulators \
    --install nalkinscloud/nalkinscloud-mqtt-simulators \
    --namespace nalkinscloud-mqtt-simulators \
    -f values.alpha.yaml \
    --create-namespace
```
