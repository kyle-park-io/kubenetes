SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# server
kubectl delete service kyle-quant-app-server-service
kubectl delete deployment kyle-quant-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/kyle-quant-app-server.yaml
