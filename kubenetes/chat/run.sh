# chat
# kubectl delete service chat-node-client
# kubectl delete service chat-node-server
# kubectl delete service chat-node-envoy
# kubectl delete deployment chat-node-deployment
# kubectl apply -f /home/kyle/kyle-config/kubenetes/chat-node.yaml

# server
kubectl delete service chat-node-server
kubectl delete service chat-node-envoy
kubectl delete deployment chat-node-deployment
kubectl apply -f /home/kyle/kyle-config/kubenetes/chat-node-server.yaml

# client
kubectl delete service chat-node-client
kubectl delete deployment chat-node-deployment2
kubectl apply -f /home/kyle/kyle-config/kubenetes/chat-node-client.yaml
