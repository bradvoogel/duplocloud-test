
# Create the helmchart
```
helm create webapp1
```

# Install the first one
```
helm install mywebapp-release webapp1/ --values webapp1/values.yaml
```

# Upgrade after templating
```
helm upgrade mywebapp-release webapp1/ --values webapp1/values.yaml
```

# Accessing it, testing it in defualt namespace
```
servicename=$(kubectl get service -l "app=myhelmapp" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward service/myhelmapp 8080:80 --namespace default
```

# Create dev/prod
```
kubectl create namespace dev
helm install mywebapp-release-dev webapp1/ --values webapp1/values.yaml -f webapp1/values-dev.yaml -n dev
helm ls --all-namespaces

For upgrades run this command 
helm upgrade mywebapp-release-dev webapp1/ --values webapp1/values.yaml -f webapp1/values-dev.yaml -n dev
helm upgrade mywebapp-release-prod webapp1/ --values webapp1/values.yaml -f webapp1/values-prod.yaml -n prod


Switch Kube context to prod cluster for prod
kubectl create namespace prod
helm install mywebapp-release-prod webapp1/ --values webapp1/values.yaml -f webapp1/values-prod.yaml -n prod
helm ls --all-namespaces

```
