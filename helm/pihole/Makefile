.PHONY: install
install: 
	kubectl create ns pihole
	echo ${PIHOLE_PSWD} | base64 | xargs -I {} sed -i 's/replaceme/{}/g' secret.yaml
	kubectl apply -f secret.yaml
	helm install pihole mojo2600/pihole --values pihole.yaml --namespace pihole
.PHONY: uninstall
uninstall:
	helm uninstall pihole --namespace pihole
	kubectl delete ns pihole
.PHONY: update
update:
	helm upgrade pihole mojo2600/pihole --values pihole.yaml --namespace pihole
.PHONY: helm-add
helm-add:
	helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes/
	helm repo update
