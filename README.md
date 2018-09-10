Public Helm Repository
======================


Install Helm
------------

download [Helm](https://github.com/kubernetes/helm/releases)  
`wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz`

And install, [follow instructions](https://github.com/helm/helm/blob/master/docs/install.md)

Add nalkinscloud repository  
```bash
helm repo add nalkinscloud https://arielevs.github.io/Kubernetes-Helm-Charts/  
tar -zxvf helm-* 
mv linux-amd64/helm /usr/local/bin/helm
```

Usage
-----

deploy 
```bash
helm upgrade nalkinscloud-api \
    --install nalkinscloud/nalkinscloud \
    --namespace nalkinscloud \
    --set deployment.env.graylogHost=GRAYLOG_HOST \
    --set deployment.env.graylogPort=GRAYLOG_PORT \
    --set deployment.env.emailHost=EMAIL_HOST \
    --set deployment.env.emailPort=EMAIL_PORT \
    --set secrets.docker.registry=DOCKER_REPO \
    --set secrets.docker.username=DOCKER_USERNAME \
    --set secrets.docker.password=DOCKER_USERNAME \
    --set secrets.database.username=DB_USERNAME \
    --set secrets.database.password=DB_PASSWORD \
    --set secrets.email.username=EMAIL_USERNAME \
    --set secrets.email.password=EMAIL_PASSOWRD \
    --set persistent.nfs.server=NFS_SERVER \
    --set persistent.nfs.path=NFS_VOLUME
```
