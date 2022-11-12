#!/bin/bash
THT=/usr/share/openstack-tripleo-heat-templates/
CNF=~/templates-custom/

source ~/stackrc
openstack overcloud deploy --templates $THT \
-r $CNF/roles_data.yaml \
-n $CNF/network_data.yaml \
-e $THT/environments/network-isolation.yaml \
-e $THT/environments/disable-telemetry.yaml \
-e $CNF/environments/network-environment.yaml \
-e $CNF/environments/net-bond-with-vlans.yaml \
-e ~/containers-prepare-parameter.yaml \
-e $CNF/node-info.yaml \
-e $CNF/fencing.yaml
