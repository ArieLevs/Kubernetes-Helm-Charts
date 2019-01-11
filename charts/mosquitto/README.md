Make sure helm repo is up to date `helm repo update`.

```bash
helm upgrade mosquitto  \
  --install nalkinscloud/mosquitto \
  --namespace mosquitto
```

Update values file as needed
