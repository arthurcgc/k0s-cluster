.PHONY: install
install:
	helm repo add metallb https://metallb.github.io/metallb
	helm install metallb metallb/metallb -f values.yaml --namespace metallb
	kubectl apply -f metallb_configmap.yaml

.PHONY: uninstall
uninstall:
	helm uninstall metallb