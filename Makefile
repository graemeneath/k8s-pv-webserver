all:
	microk8s.kubectl apply -f pv-webserver.yaml
	microk8s.kubectl apply -f pvc-webserver.yaml

stop:
	microk8s.kubectl delete pvc webserver-pvc || true
	microk8s.kubectl delete pv webserver-pv || true
