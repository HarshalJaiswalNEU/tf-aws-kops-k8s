# Launch Kubernetes Cluster using kOps

## Pre-requirements
- Configure AWS cli (aws account set-up with proper profile credentials/region needed).
- Install kOps
- Install minikube
- Install Kubectl

## Environment variables file requires by KOPS
```shell
env.sh
```
## Command to create cluster
```
kops create cluster \
--name="$kOps_cluster_name" \
--node-count="$node_count" \
--node-size="$node_size"\
--node-volume-size="$node_volume" \
--zones="${node_zones}" \
--master-size="$master_instance_type"\
--master-count="$master_count"\
--master-volume-size="$master_volume_size" \
--master-zones="$master_zones" \
--ssh-public-key=<your ssh key name> \
--kubernetes-version="1.22.15" \
--dns-zone=<your DNS name>
```

## Script to launch Kubernetes Cluster on AWS
```
create-cluster.sh
```

## Script to teardown Kubernetes Cluster on AWS
```shell
delete-cluster.sh
```
## Command to view cluster details
```
minikube start
kubectl config view
kubectl config use-context ${kOps_cluster_name}
kubectl get nodes
```

## Terraform commands
```shell
terraform init
terraform plan
terraform apply
terraform destroy
```
