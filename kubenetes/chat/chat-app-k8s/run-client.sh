SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# client
kubectl delete service chat-app-client-service
kubectl delete deployment chat-app-client-deployment
kubectl apply -f ${SCRIPT_DIR}/chat-app-client.yaml
