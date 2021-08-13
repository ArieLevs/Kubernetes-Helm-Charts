# Deploy External Secrets CRDs

* In order for this chart to work `Kubernetes External Secrets` must be [installed](https://github.com/external-secrets/kubernetes-external-secrets/tree/master/charts/kubernetes-external-secrets)

motivation for this chart is to allow deployment of [kubernetes external secrets](https://github.com/external-secrets/kubernetes-external-secrets) when needed.  
when deploying different applications it is usually needs secrets,
This chart will deploy external secrets, so the original chart will not be needed to override.

for example, when installing the `Thingsboard` helm chart, secrets for external db needed, 
instead of creating a sub-chart with the `ExternalSecret` resource, 
secrets can be provided directly to values file since this chart is a sub-chart in `Thingsboard` helm chart

add chart
```shell
helm repo add nalkinscloud https://arielevs.github.io/Kubernetes-Helm-Charts/  
```

Deploy chart
```shell script
helm upgrade external-secrets-crd \
    --install nalkinscloud/external-secrets-crd \
    --create-namespace \
    --namespace external-secrets
```
