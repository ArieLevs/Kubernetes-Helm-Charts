Public Helm Repository
======================


Install Helm
------------

download [Helm](https://github.com/kubernetes/helm/releases)  

```bash
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
tar -zxvf helm-* 
mv linux-amd64/helm /usr/local/bin/helm
```

Add nalkinscloud repository  
```bash
helm repo add nalkinscloud https://arielevs.github.io/Kubernetes-Helm-Charts/  

```

Usage
-----

View specific charts 
[deployment usage](https://github.com/ArieLevs/Kubernetes-Helm-Charts/tree/master/charts/nalkinscloud)
for example.
