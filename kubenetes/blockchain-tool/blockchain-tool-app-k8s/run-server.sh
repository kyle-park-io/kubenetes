SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# server
kubectl delete service blockchain-tool-app-server-service
kubectl delete deployment blockchain-tool-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/blockchain-tool-app-server.yaml
