SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# server
kubectl delete service chat-app-server-service
kubectl delete service chat-app-envoy-service
kubectl delete deployment chat-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/chat-app-server.yaml
