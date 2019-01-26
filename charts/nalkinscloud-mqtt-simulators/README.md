Installation
============

**IMPORTANT** - This deployment had a hardcoded container dependency,  
A mosquitto service must be up and reachable,  
Check `dependantContainers` value and command.  
```bash
helm upgrade nalkinscloud-mqtt-simulators \
    --install nalkinscloud/nalkinscloud-mqtt-simulators \
    --namespace nalkinscloud-mqtt-simulators
```
