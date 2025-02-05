.PHONY: install
install:
	helm install kratix syntasso/kratix -f ./kratix-install.yaml

.PHONY: update
update:
	helm upgrade kratix syntasso/kratix -f ./kratix-install.yaml

.PHONY: uninstall
uninstall:
	helm uninstall kratix