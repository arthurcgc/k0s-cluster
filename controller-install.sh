curl -sSLf https://get.k0s.sh | sudo sh
sudo k0s install controller --config k0s.yaml
sudo k0s start
sleep 5
sudo k0s kubeconfig admin > k0s_kubeconfig.yaml
export KUBECONFIG=~/.kube/config:~/Documents/k0s-cluster/k0s_kubeconfig.yaml
kubectl config view --flatten > config && mv config ~/.kube/config
unset KUBECONFIG
sudo k0s token create > join_token
scp join_token sampi@192.168.0.23:/home/sampi/k0s/
scp worker-install.sh sampi@192.168.0.23:/home/sampi/k0s/
scp uninstall.sh sampi@192.168.0.23:/home/sampi/k0s/
