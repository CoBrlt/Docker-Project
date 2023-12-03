sh delete_frontend.sh
sh rebuild.sh
kubectl apply --force -f frontend.yaml -n=exam