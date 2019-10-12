sudo apt-get update

sudo apt-get install -y apt-transport-https

# Install Docker
sudo apt install docker.io

sudo systemctl enable docker

# Install kubectl

 curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
 sudo touch /etc/apt/sources.list.d/kubernetes.list 
 echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
 sudo apt-get update
sudo apt-get update && apt-get install -y kubeadm kubelet kubectl
 sudo swapoff -a
 
 
sudo kubeadm init --pod-network-cidr=10.244.0.0/16  --apiserver-advertise-address=0.0.0.0

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
 
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# JOIN NODES kubeadm join 192.168.100.52:6443 --token sveo3d.lz6jiikiueo48v9l \
    --discovery-token-ca-cert-hash sha256:cf06bee02f1cc746bf6f8c211c10d855e34e1d47754ca0e4c372e01bf97233d6 
    
    kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
    
    
# INSTALL KUBERNATE DASRHBOARD

