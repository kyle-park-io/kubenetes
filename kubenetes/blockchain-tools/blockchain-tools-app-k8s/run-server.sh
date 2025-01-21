SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pvc
# kubectl delete pvc timestamp-pvc tracker-pvc
# kubectl apply -f ${SCRIPT_DIR}/pvc.yaml

# server
kubectl delete service blockchain-tools-app-server-service
kubectl delete deployment blockchain-tools-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/blockchain-tools-app-server.yaml
