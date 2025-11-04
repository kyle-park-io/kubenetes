SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# server
kubectl delete service kyle-quant-backend-app-server-service
kubectl delete deployment kyle-quant-backend-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/kyle-quant-backend-app-server.yaml
