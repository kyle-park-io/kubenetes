SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pvc
# kubectl delete pvc redis-server-pvc redis-pvc
# kubectl apply -f ${SCRIPT_DIR}/pvc.yaml

# server
kubectl delete service redis-tcp-app-server-service
kubectl delete deployment redis-tcp-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/redis-tcp-app-server.yaml
