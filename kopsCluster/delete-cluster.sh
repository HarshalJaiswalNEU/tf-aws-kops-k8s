#!/bin/bash
# shellcheck source=/dev/null
source ./env.sh

kops delete cluster --name "${kOps_cluster_name}" --yes