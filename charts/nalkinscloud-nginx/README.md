
Make sure helm repo is up to date `helm repo update`.

Mandatory parameters to deploy Nalkinscloud Nginx:

```bash
helm upgrade nalkinscloud-nginx \
    --install nalkinscloud/nalkinscloud-nginx \
    --namespace nalkinscloud-nginx \
    --set persistent.frontendApi.nfs.server=[NFS_SERVER] \
    --set persistent.frontendApi.nfs.path=[NFS_SHARE_PATH] \
    --set persistent.resume.nfs.server=[NFS_SERVER] \
    --set persistent.resume.nfs.path=[NFS_SHARE_PATH]
```
