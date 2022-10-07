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
