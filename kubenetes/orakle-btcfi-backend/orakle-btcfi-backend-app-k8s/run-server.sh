SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pvc
# kubectl delete pvc orakle-btcfi-backend-pvc
# kubectl apply -f ${SCRIPT_DIR}/pvc.yaml

# server
kubectl delete service orakle-btcfi-backend-app-server-service
kubectl delete deployment orakle-btcfi-backend-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/orakle-btcfi-backend-app-server.yaml
