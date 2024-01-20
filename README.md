# My k0s cluster

Current setup for my home k8s cluster. It is currently composed of 2 nodes:
1- master(control-plane) node - running on my ultra mega gaming PC
2- worker node - running on a raspberry Pi 4B

## Installing

### Master node

1. Install k0s on the master node
2. Copy the `k0s.yaml` file to the master node
3. Run the controller-install.sh script

### Worker node

1. Install k0s on the worker node
2. If you ran the controller-install.sh script and everything went well, you should have a `worker-install.sh` file in the worker node already.
3. Run the worker-install.sh script

### Post-install

* To test the setup you can run:

```bash
kubectl apply -f nginx/nginx.yaml
```

This creates an nginx deployment and a nodePort service.

### Pi-hole

* I use helm to install pi-hole on my cluster. I've already tuned in some nice-to-have options o the helm chart. To do so, run:

```bash
helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes/
cd helm/pihole
make install
```
