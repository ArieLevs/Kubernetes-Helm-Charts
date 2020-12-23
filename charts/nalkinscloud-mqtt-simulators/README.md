Installation
============

**IMPORTANT** - This deployment had a hardcoded container dependency,  
A mosquitto service must be up and reachable, below values must be reachable.  
```yaml
envVars:
  broker_host: mosquitto.mosquitto.svc.cluster.local
  broker_port: 1883
```
Install
```shell script
helm upgrade nalkinscloud-mqtt-simulators \
    --install nalkinscloud/nalkinscloud-mqtt-simulators \
    --namespace nalkinscloud-mqtt-simulators
```

Alpha env installation
```shell script
helm upgrade nalkinscloud-mqtt-simulators \
    --install nalkinscloud/nalkinscloud-mqtt-simulators \
    --namespace nalkinscloud-mqtt-simulators \
    --set envVars.broker_host=mosquitto.alpha.nalkins.cloud \
    --set envVars.broker_port=8883
```
