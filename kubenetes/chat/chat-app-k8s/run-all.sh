SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# chat
kubectl delete service chat-app-client-service
kubectl delete service chat-app-envoy-service
kubectl delete service chat-app-server-service
kubectl delete deployment chat-app-deployment
kubectl apply -f SCRIPT_DIR/chat-app.yaml
