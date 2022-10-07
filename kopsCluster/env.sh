#!/bin/bash

set -e

export kOps_cluster_name=aws.vinitharsora.me
export KOPS_STATE_STORE=s3://csye7125-bucket
#  export kOps_cluster_name=aws.harshaljaiswal.me
#  export KOPS_STATE_STORE=s3://csye7125-bucket-harshal
#  export kOps_cluster_name=aws.shrawanikarpe.me
# export KOPS_STATE_STORE=s3://csye7125-bucket-shrawani
export master_count="3"
export master_volume_size="50"
export master_instance_type="t2.medium"
export master_zones="us-east-1a,us-east-1b,us-east-1c"
export node_zones="us-east-1a,us-east-1b,us-east-1c"
export node_count="3"
export node_size="t2.small"
export node_volume="25"
export kubernetes_version=1.22.15
export public_key="$HOME/.ssh/kOps.pub"
export AWS_PROFILE=root
export AWS_REGION=us-east-1