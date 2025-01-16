SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pvc
# kubectl delete pvc dex-pvc
# kubectl apply -f ${SCRIPT_DIR}/pvc.yaml

# server
kubectl delete service dex-app-server-service
kubectl delete deployment dex-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/dex-app-server.yaml
