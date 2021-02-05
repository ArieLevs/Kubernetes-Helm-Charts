Make sure helm repo is up to date `helm repo update`.

* NO authentication currently setup, consider using `Mosquitto Go Auth`

```bash
helm upgrade mosquitto  \
  --install nalkinscloud/mosquitto \
  --namespace mosquitto \
  -f values.yaml
```

Update values file as needed
