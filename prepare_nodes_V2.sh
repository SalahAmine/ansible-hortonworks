#!/usr/bin/env bash

# use static config for now
export CLOUD_TO_USE=static
source $(dirname "${BASH_SOURCE[0]}")/set_cloud.sh
set -x;
ansible-playbook -i "inventory/${cloud_to_use}" -e "cloud_name=${cloud_to_use}" playbooks/prepare_nodes_V2.yml "$@"
set +x;
