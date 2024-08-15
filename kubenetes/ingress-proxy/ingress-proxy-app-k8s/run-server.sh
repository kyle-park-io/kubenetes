SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# # pv
# kubectl delete pvc hostpath-pvc
# kubectl delete pv hostpath-pv
# kubectl apply -f ${SCRIPT_DIR}/../pv/pv.yaml

# server
kubectl delete deployment ingress-proxy-app-server-deployment
kubectl apply -f ${SCRIPT_DIR}/ingress-proxy-app-server.yaml
