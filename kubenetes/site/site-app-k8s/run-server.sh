SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# server
kubectl delete service site-app-server-service
kubectl delete deployment site-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/site-app-server.yaml
