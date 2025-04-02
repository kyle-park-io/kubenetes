SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pvc
# kubectl delete pvc db-postgres-pvc db-redis-pvc
# kubectl apply -f ${SCRIPT_DIR}/pvc.yaml

# server
kubectl delete service db-tcp-app-server-service
kubectl delete deployment db-tcp-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/redis-tcp-app-server.yaml
