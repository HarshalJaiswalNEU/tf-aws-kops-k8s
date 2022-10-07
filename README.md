# Kubernetes Cluster Networking Setup using kOps

## Prerequirements
- Configure AWS cli (aws account set-up with proper profile credentials/region needed).
- Install kOps
- Install minikube

## Environment variables we must export before launching our Kubernetes cluster
```shell
export kOps_cluster_name=aws.vinitharsora.me
export kOps_state_store=s3://csye7125-bucket
export master_count="3"
export master_volume_size="50"
export master_instance_type="t2.medium"
export master_zones="us-east-1a,us-east-1b,us-east-1c"
export node_zones="us-east-1a,us-east-1b,us-east-1c"
export node_count="3"
export node_size="t2.small"
export node_volume="25"
export kubernetes_version="1.22.15"
export public_key="~/.ssh/kOps.pub"
export AWS_PROFILE=root
export AWS_REGION=us-east-1
```

## kOps cli commands to launch Kubernetes Cluster on AWS
```shell
kops create cluster \
--zones=$node_zones \
--name=${kOps_cluster_name} \
--node-count=$node_count \
--node-size=$node_size \
--node-volume-size=$node_volume \
--master-size=$master_instance_type \
--master-count=$master_count \
--master-volume-size=$master_volume_size \
--master-zones=$master_zones \
--ssh-public-key=$public_key \
--kubernetes-version=$kubernetes_version \
--authorization=alwaysAllow \
--cloud=aws \
--dns-zone=${kOps_cluster_name} \
--associate-public-ip=false \
--topology=private \
--networking=calico \
--image=ami-08c40ec9ead489470 \
--bastion=true \
--yes
```
