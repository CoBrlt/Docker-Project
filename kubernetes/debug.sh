kubectl apply -f debug.yaml
kubectl exec -it debug-pod -c debug-container -n exam -- /bin/bash
