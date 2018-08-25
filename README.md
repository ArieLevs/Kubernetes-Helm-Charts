Public Helm Repository
======================

Add nalkinscloud repository
`helm repo add nalkinscloud https://arielevs.github.io/Kubernetes-Helm-Charts/`

deploy 
```bash
helm upgrade nalkinscloud-api \
    --install nalkinscloud/nalkinscloud-api \
    --namespace nalkinscloud \
    --set secrets.docker.username=[DOCKER_USERNAME] \
    --set secrets.docker.password=[DOCKER_PASSWORD] \
    --set secrets.database.username=[DB_USERNAME] \
    --set secrets.database.password=[DB_PASSWORD] \
    --set persistent.nfs.server=[NFS_SERVER] \
    --set persistent.nfs.path=[NFS_SHARE_PATH]
```
