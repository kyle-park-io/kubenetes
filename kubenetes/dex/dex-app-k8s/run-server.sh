SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# server
kubectl delete service dex-app-server-service
kubectl delete deployment dex-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/dex-app-server.yaml
