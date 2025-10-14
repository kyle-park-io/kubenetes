SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pvc
# kubectl delete pvc bot-pvc
# kubectl apply -f ${SCRIPT_DIR}/pvc.yaml

# server
kubectl delete service bot-app-server-service
kubectl delete deployment bot-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/bot-app-server.yaml
