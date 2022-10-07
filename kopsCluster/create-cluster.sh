#!/bin/bash
# shellcheck source=/dev/null
source ./env.sh


kops create cluster \
--zones="${node_zones}" \
--name="$kOps_cluster_name" \
--node-count="$node_count" \
--node-size="$node_size"\
--node-volume-size="$node_volume" \
--master-size="$master_instance_type"\
--master-count="$master_count"\
--master-volume-size="$master_volume_size" \
--master-zones="$master_zones" \
--ssh-public-key="$public_key" \
--kubernetes-version="$kubernetes_version" \
--authorization=alwaysAllow \
--cloud=aws \
--dns-zone="$kOps_cluster_name" \
--associate-public-ip=false \
--topology=private \
--networking=calico \
--image=ami-08c40ec9ead489470 \
--bastion=true \
--yes

sleep 60

kops validate cluster --wait 30m --count 1 --name="${kOps_cluster_name}"