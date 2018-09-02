
Deploy nalkinscloud from local path

```bash
helm upgrade nalkinscloud --install ./ \
    --namespace nalkinscloud \
    --set secrets.docker.username=[DOCKER_USERNAME] \
    --set secrets.docker.password=[DOCKER_PASSWORD] \
    --set secrets.database.username=[DB_USERNAME] \
    --set secrets.database.password=[DB_PASSWORD] \
    --set persistent.nfs.server=[NFS_SERVER] \
    --set persistent.nfs.path=[NFS_SHARE_PATH] \
    -f values.yml
```