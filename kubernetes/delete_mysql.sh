kubectl delete statefulset mysql-statefulset -n exam

kubectl delete pod mysql-statefulset-0 -n exam
kubectl delete pod mysql-statefulset-1 -n exam

kubectl delete service database-service -n exam