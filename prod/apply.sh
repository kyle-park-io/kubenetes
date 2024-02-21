# ingress
kubectl delete deployment ingress
kubectl apply -f ./ingress/deployment.yaml

# site
kubectl delete service blogserv
kubectl delete deployment blog
kubectl delete service dexserv
kubectl delete deployment dex
kubectl delete networkpolicy allow-github-access
kubectl apply -f ./site/node.yaml
kubectl apply -f ./site/service.yaml
kubectl apply -f ./dex/node.yaml
kubectl apply -f ./dex/service.yaml
# kubectl apply -f ./site/network-policy.yaml
