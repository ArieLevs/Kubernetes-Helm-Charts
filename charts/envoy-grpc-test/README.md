
Test chart
```shell script
helm lint .
```
Deploy chart
```shell script
kubectl create namespace grpc-test
helm upgrade grpc-test \
    --install . \
    --namespace grpc-test
```
