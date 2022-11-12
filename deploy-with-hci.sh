#!/bin/bash
THT=/usr/share/openstack-tripleo-heat-templates/
CNF=~/templates/

source ~/stackrc
openstack overcloud deploy --templates $THT \
-r $CNF/roles_data.yaml \
-n $CNF/network_data.yaml \
-e $THT/environments/ips-from-pool-all.yaml \
-e $THT/environments/cinder-backup.yaml \
-e $THT/environments/ceph-ansible/ceph-rgw.yaml \
-e $THT/environments/ceph-ansible/ceph-ansible.yaml \
-e $THT/environments/ssl/enable-internal-tls.yaml \
-e $THT/environments/ssl/tls-everywhere-endpoints-dns.yaml \
-e $THT/environments/services/barbican.yaml \
-e $THT/environments/barbican-backend-simple-crypto.yaml \
-e $THT/environments/services/octavia.yaml \
-e $CNF/environments/network-isolation.yaml \
-e $CNF/environments/network-environment.yaml \
-e $CNF/environments/net-bond-with-vlans.yaml \
-e ~/containers-prepare-parameter.yaml \
-e $CNF/custom-domain.yaml \
-e $CNF/node-info.yaml \
-e $CNF/HostnameMap.yaml \
-e $CNF/ips-from-pool-all.yaml \
-e $CNF/stf-connectors.yaml \
-e $CNF/fencing.yaml \
-e $CNF/enable-tls.yaml \
-e $CNF/inject-trust-anchor.yaml \
-e $CNF/keystone_domain_specific_ldap_backend.yaml \
-e $CNF/scheduler-hints.yaml \
-e $CNF/ceph-config.yaml \
-e $CNF/fix-nova-reserved-host-memory.yaml
