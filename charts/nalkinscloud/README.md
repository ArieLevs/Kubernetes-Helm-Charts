
Make sure helm repo is up to date, and update dependencies.
```shell script
helm repo update
helm dependency update
```
* CI Process (Jenkins/GitHub actions) will add additional mandatory values,
    It should not be possible to deploy this application not via a CI process.

Installing on localhost:
```shell script
helm upgrade nalkinscloud-api \
  --install nalkinscloud/nalkinscloud \
  --namespace nalkinscloud-api \
  --set deployment.env.environment=dev \
  --set deployment.env.version=dev \
  --set deployment.env.email_host=[EMAIL_HOST] \
  --set deployment.env.email_port=[EMAIL_PORT] \
  --set secrets.docker.registry=[DOCKER_REPOSITORY] \
  --set secrets.docker.username=[DOCKER_USERNAME] \
  --set secrets.docker.password=[DOCKER_PASSWORD] \
  --set secrets.email.username=[EMAIL_PASSWORD] \
  --set secrets.email.password=[EMAIL_PASSWORD]
```

Install resume
```shell script
kubectl create namespace nalkinscloud-resume
helm repo update

helm upgrade nalkinscloud-resume \
    --install nalkinscloud/nalkinscloud \
    --namespace nalkinscloud-resume \
    -f values.nalkinscloud-resume.local.yaml \
    --set secrets.docker.registry=docker.nalkins.cloud \
    --set secrets.docker.username=[DOCKER_USERNAME] \
    --set secrets.docker.password=[DOCKER_PASSWORD]
```

### Executing chart in CI environment:
* the `tags.e2e-test=true` will deploy all dependency chart needed in CI env
```shell script
helm upgrade nalkinscloud-api \
  --install nalkinscloud/nalkinscloud \
  --namespace e2etest \
  -f values.nalkinscloud-django-backend.ci.yaml \
  --set mariadb.enabled=true --set vault.enabled=true --set mosquitto.enabled=true --set simulators.enabled=true
  --set secrets.docker.registry=docker.nalkins.cloud \
  --set secrets.docker.username=[DOCKER_USERNAME] \
  --set secrets.docker.password=[DOCKER_PASSWORD] \
  --set vault.injector.namespaceSelector.matchLabels.vault-injector=[CI_DEPLOYED_NAMESPACE] \
  --set configmap.databaseVars.db_host=nalkinscloud-api-nalkinscloud-db.e2etest.svc.cluster.local \
  --set simulators.envVars.broker_host=nalkinscloud-api-mosquitto.e2etest.svc.cluster.local
```
