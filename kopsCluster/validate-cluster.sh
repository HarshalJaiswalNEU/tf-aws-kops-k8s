#!/bin/bash
# shellcheck source=/dev/null
source ./env.sh

sleep 60

kops validate cluster --wait 3m --count 1 --name="${kOps_cluster_name}"