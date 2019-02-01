
Make sure helm repo is up to date `helm repo update`.

Set for Graylog logs:
```bash
--set deployment.env.graylog_host=
--set deployment.env.graylog_port=
```

Mandatory parameters to deploy Nalkinscloud:

```bash
helm upgrade nalkinscloud-api \
  --install nalkinscloud/nalkinscloud \
  --namespace nalkinscloud-api \
  --set deployment.env.version=[VERSION] \
  --set deployment.env.graylog_host=[GRAYLOG_HOST] \
  --set deployment.env.graylog_port=[GRAYLOG_PORT] \
  --set deployment.env.email_host=[EMAIL_HOST] \
  --set deployment.env.email_port=[EMAIL_PORT] \
  --set secrets.docker.registry=[DOCKER_REPOSITORY] \
  --set secrets.docker.username=[DOCKER_USERNAME] \
  --set secrets.docker.password=[DOCKER_PASSWORD] \
  --set configmap.databaseVars.db_name=django \
  --set configmap.databaseVars.db_user=django \
  --set configmap.databaseVars.db_host=[DB_HOST] \
  --set secrets.database.username=[DB_USERNAME] \
  --set secrets.database.password=[DB_PASSWORD] \
  --set secrets.email.username=[EMAIL_PASSWORD] \
  --set secrets.email.password=[EMAIL_PASSWORD]
```

Installing on local host:
```bash
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
