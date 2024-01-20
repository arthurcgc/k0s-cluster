.PHONY: install
install:
	helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
	helm repo update
	# kubectl create ns monitoring
	helm install prometheus-stack prometheus-community/kube-prometheus-stack --values values.yaml --namespace monitoring

.PHONY: uninstall
uninstall:
	helm uninstall prometheus-stack --namespace monitoring
	kubectl delete ns monitoring
