vi .ssh/authorized_keys 
sudo -i
vi  undercloud.conf
cat  undercloud.conf 
sudo  yum -y  install  tmux vim
tmux 
mkdir ~/images
mkdir -p ~/templates/environments
sudo yum -y install rhosp-director-images
tar -C ~/images -xvf /usr/share/rhosp-director-images/overcloud-full-latest.tar
tar -C ~/images -xvf /usr/share/rhosp-director-images/ironic-python-agent-latest.tar
openstack overcloud image upload --image-path ~/images
openstack image list
ls -al /var/lib/ironic/httpboot/
curl -s -H "Accept: application/json" http://192.0.2.1:8787/v2/_catalog | jq .vbm
. stackrc 
curl -s -H "Accept: application/json" http://192.0.2.1:8787/v2/_catalog | jq .
showmount -e 
showmount -e  192.0.2.254
openstack overcloud node import --validate-only ~/nodes.json
tmux a
sudo -i
sudo yum -y install ceph-ansible
cat containers-prepare-parameter.yaml
cat ~/undercloud-passwords.conf
openstack catalog list
cat /etc/os-net-config/config.json | jq .
sudo ip netns exec $(sudo ip netns | awk '{print $1}') ip a
ls images/
ls -al /var/lib/ironic/httpboot/
curl -s -H "Accept: application/json" http://192.0.2.1:8787/v2/_catalog | jq .
 grep Completed /var/log/tripleo-container-image-prepare.log
./gen_instackenv.sh
rm -rf nodes.json 
ls
,v
openstack baremetal node list
sudo  reboot
openstack tripleo container image prepare default   --local-push-destination   --output-env-file containers-prepare-parameter.yaml
sed -i "s/registry.redhat.io/classroom.example.com:5000/" containers-prepare-parameter.yaml
cat containers-prepare-parameter.yaml
time openstack undercloud install
openstack overcloud node import --introspect --provide nodes.json
. stackrc 
openstack overcloud node import --introspect --provide nodes.json
openstack overcloud node import --validate-only ~/nodes.json
cat  nodes.json 
openstack overcloud node import --validate-only ~/nodes.json 
openstack  baremetal  list
openstack  baremetal node list
openstack overcloud node import --introspect --provide nodes.json
ping 192.168.1.1
openstack overcloud node import --introspect --provide nodes.json
openstack overcloud node import --validate-only ~/nodes.json 
openstack overcloud node import --introspect --provide nodes.json
ls -al /var/lib/ironic/httpboot/
cls images/
ls images/
ls -al /var/lib/ironic/httpboot/
 openstack image list
openstack overcloud image upload --image-path ~/images
 openstack image list
ls -al /var/lib/ironic/httpboot/
openstack overcloud node import --introspect --provide nodes.json
openstack  baremetal node list
openstack  baremetal node delete  3070ae5b-14d6-4300-b484-7ce90e17512a 78474182-8def-4772-9def-049d5f27348a 4196735b-83ae-4805-8bb2-abd5bf7747f3 19ea594f-8949-4b59-8247-c924ad67ea7a cad771c7-56db-4e97-992a-9133e1f4408c b7daacc8-be42-4665-b517-4d690dbe8f97 6b49538d-ef9e-49df-a11b-9f3e2ad475d7
openstack  baremetal node list
 openstack image list
sudo -i
. stackrc 
openstack  baremetal  node list
sudo -i
uptime 
. stackrc 
openstack catalog list
openstack overcloud node import --validate-only ~/nodes.json
openstack  baremetal  node list
tmux a
tmux 
openstack baremetal node show overcloud-ctrl01 -f json -c driver_info
openstack baremetal introspection list
openstack baremetal node set --property capabilities=profile:control overcloud-ctrl01
openstack baremetal node set --property capabilities=profile:control overcloud-ctrl02
openstack baremetal node set --property capabilities=profile:control overcloud-ctrl03
openstack baremetal node set --property capabilities=profile:compute overcloud-compute01
openstack baremetal node set --property capabilities=profile:compute overcloud-compute02
 openstack overcloud profiles list
mkdir -p ~/templates/environments
i /home/stack/templates/node-info.yaml 
vi /home/stack/templates/node-info.yaml 
i /home/stack/templates/fix-nova-reserved-host-memo
vi /home/stack/templates/fix-nova-reserved-host-memo
THT=/usr/share/openstack-tripleo-heat-templates
 cp $THT/roles_data.yaml ~/templates
cp $THT/network_data.yaml ~/templates
 cat templates/roles_data.yaml
vi  ~/templates/network_data.yaml 
vi  ~/templates/network_data
mv ~/templates/network_data.yaml /tmp/
mv ~/templates/network_data ~/templates/network_data.yaml
vi ~/templates/network_data.yaml 
 mkdir ~/rendered
cd $THT
tools/process-templates.py -r ~/templates/roles_data.yaml -n ~/templates/network_data.yaml -o ~/rendered
cd ~/rendered/
cat environments/network-environment.yaml
cp environments/network-environment.yaml ~/templates/environments
cp -rp network ~/templates
ls  templates/network/config/bond-with-vlans/
cp environments/net-bond-with-vlans.yaml ~/templates/environments/
vi  environments/net-bond-with-vlans.yaml 
cd ..
diff rendered/network/config/bond-with-vlans/controller.yaml templates/network/config/bond-with-vlans/
diff rendered/network/config/bond-with-vlans/controller.yaml templates/network/config/bond-with-vlans/controller
diff rendered/network/config/bond-with-vlans/controller.yaml templates/network/config/bond-with-vlans/controller.yaml 
vi templates/network/config/bond-with-vlans/controller.yaml
cp rendered/network/config/bond-with-vlans/controller.yaml templates/network/config/bond-with-vlans/
echo "" >> templates/environments/network-environment.yaml
echo "  NetworkDeploymentActions: ['CREATE','UPDATE']" >> templates/environments/network-environment.yaml
vi /home/stack/templates/environments/storage-environment.yaml
vi  deploy.sh
chmod 755 deploy.sh
cat > ~/templates/HostnameMap.yaml <<EOF
parameter_defaults:
  HostnameMap:
    overcloud-controller-0: lab-controller01
    overcloud-controller-1: lab-controller02
    overcloud-controller-2: lab-controller03
    overcloud-novacompute-0: lab-compute01
    overcloud-novacompute-1: lab-compute02
EOF

grep -e name: -e _pools ~/templates/network_data.yaml|grep -v ipv6
cat > ~/templates/ips-from-pool-all.yaml <<EOF
parameter_defaults:
  ControllerIPs:
    # Each controller will get an IP from the lists below, first controller, first IP
    ctlplane:
    - 192.0.2.201
    - 192.0.2.202
    - 192.0.2.203
    external:
    - 10.0.0.201
    - 10.0.0.202
    - 10.0.0.203
    internal_api:
    - 172.17.0.201
    - 172.17.0.202
    - 172.17.0.203
    storage:
    - 172.18.0.201
    - 172.18.0.202
    - 172.18.0.203
    storage_mgmt:
    - 172.19.0.201
    - 172.19.0.202
    - 172.19.0.203
    tenant:
    - 172.16.0.201
    - 172.16.0.202
    - 172.16.0.203
    #management:
    #management:
    #- 172.16.4.251
  ComputeIPs:
    # Each compute will get an IP from the lists below, first compute, first IP
    ctlplane:
    - 192.0.2.211
    - 192.0.2.212
    external:
    - 10.0.0.211
    - 10.0.0.212
    internal_api:
    - 172.17.0.211
    - 172.17.0.212
    storage:
    - 172.18.0.211
    - 172.18.0.212
    storage_mgmt:
    - 172.19.0.211
    - 172.19.0.212
    tenant:
    - 172.16.0.211
    - 172.16.0.213
    #management:
    #- 172.16.4.252
### VIPs ###

  ControlFixedIPs: [{'ip_address':'192.0.2.150'}]
  InternalApiVirtualFixedIPs: [{'ip_address':'172.17.0.150'}]
  PublicVirtualFixedIPs: [{'ip_address':'10.0.0.150'}]
  StorageVirtualFixedIPs: [{'ip_address':'172.18.0.150'}]
  StorageMgmtVirtualFixedIPs: [{'ip_address':'172.19.0.150'}]
  RedisVirtualFixedIPs: [{'ip_address':'172.17.0.151'}]
EOF

openstack overcloud generate fencing --ipmi-lanplus --ipmi-level administrator --output ~/templates/fencing.yaml nodes.json
cat ~/templates/fencing.yaml
cat > ~/templates/keystone_domain_specific_ldap_backend.yaml <<EOF
parameter_defaults:
  KeystoneLDAPDomainEnable: true
  KeystoneLDAPBackendConfigs:
    gpte:
      url: ldap://192.168.0.252
      user: uid=admin,cn=users,cn=compat,dc=example,dc=com
      password: r3dh4t1!
      suffix: dc=example,dc=com
      user_tree_dn: cn=users,cn=accounts,dc=example,dc=com
      user_filter: ""
      user_objectclass: person
      user_id_attribute: uid
      user_name_attribute: uid
      user_allow_create: false
      user_allow_update: false
      user_allow_delete: false
EOF

grep PublicVirtualFixedIPs ~/templates/ips-from-pool-all.yaml
cp ~/rendered/environments/ssl/enable-tls.yaml ~/templates
cp ~/rendered/environments/ssl/inject-trust-anchor.yaml ~/templates/inject-trust-anchor.yaml
sed -i 's#\.\./\.\.#/usr/share/openstack-tripleo-heat-templates#' ~/templates/inject-trust-anchor.yaml
grep NodeTLSCAData ~/templates/inject-trust-anchor.yaml
openssl genrsa -out ~/templates/overcloud-privkey.pem 2048
openssl req -new -x509 -key ~/templates/overcloud-privkey.pem -out ~/templates/overcloud-cacert.pem -days 365 -subj '/C=US/ST=NC/L=Raleigh/O=Red Hat/OU=QE/CN=overcloud.example.com'
openssl x509 -in ~/templates/overcloud-cacert.pem -text -noout
sudo cp ~/templates/overcloud-cacert.pem /etc/pki/ca-trust/source/anchors/
sudo update-ca-trust extract
 cd ~/templates
ls
sed -i -e '/The contents of your certificate go here/r overcloud-cacert.pem' -e '/The contents of your certificate go here/ d' enable-tls.yaml
sed -i  -e '/-----BEGIN CERT/,/-----END CERT/{s/^/    /g}' enable-tls.yaml
sed -i -e '/The contents of the private key go here/r overcloud-privkey.pem' -e '/The contents of the private key go here/ d' enable-tls.yaml
sed -i -e '/-----BEGIN RSA/,/-----END RSA/{s/^/    /g}' enable-tls.yaml
sed -i -e '/The contents of your certificate go here/r overcloud-cacert.pem' -e '/The contents of your certificate go here/ d' inject-trust-anchor.yaml
 sed -i  -e '/-----BEGIN CERT/,/-----END CERT/{s/^/    /g}' inject-trust-anchor.yaml
cat enable-tls.yaml
cat inject-trust-anchor.yaml
sudo dnf install python3-novajoin -y
 sudo sed -i 's/192.168.0.1/192.168.0.252/' /etc/resolv.conf
sudo /usr/libexec/novajoin-ipa-setup --principal admin --password r3dh4t1\! --server ipa.example.com --realm EXAMPLE.COM --domain example.com --hostname undercloud.example.com --precreate
sudo yum install -y crudini
crudini --set ~/undercloud.conf DEFAULT enable_novajoin true
su ~
cd ~
crudini --set ~/undercloud.conf DEFAULT enable_novajoin true
crudini --set ~/undercloud.conf DEFAULT overcloud_domain_name example.com
crudini --set ~/undercloud.conf DEFAULT undercloud_hostname undercloud.example.com
crudini --set ~/undercloud.conf DEFAULT undercloud_nameservers 192.168.0.252
crudini --set ~/undercloud.conf DEFAULT ipa_otp 3Klanc3gHFX7ShW2wiV5LnVrofm0e2Ejc6yn0QUIdQmp
cat /etc/resolv.conf
openstack undercloud install
 openstack subnet show ctlplane-subnet -c dns_nameservers -f value
sed -i 's/  DnsServers: \[\]/  DnsServers: ["192.168.0.252"]/' ~/templates/environments/network-environment.yaml
grep DnsServers ~/templates/environments/network-environment.yaml
THT=/usr/share/openstack-tripleo-heat-templates/
sed 's/localdomain/example.com/' $THT/environments/predictable-placement/custom-domain.yaml | tee ~/templates/custom-domain.yaml
cat ~/templates/custom-domain.yaml
less  rendered/environments/ssl/enable-internal-tls.yaml
less  rendered/environments/ssl/tls-everywhere-endpoints-dns.yaml
cat > ~/templates/ceph-config.yaml <<EOF
parameter_defaults:
  CephConfigOverrides:
    osd_pool_default_size: 2
    osd_pool_default_min_size: 1
    mon_max_pg_per_osd: 1000
  CephAnsibleDisksConfig:
    osd_scenario: collocated
    devices:
      - /dev/vdb
EOF

cat ~/templates/ceph-config.yaml
df -h
cat ~/templates/node-info.yaml 
cat > ~/templates/node-info.yaml <<EOF
parameter_defaults:
  OvercloudControlFlavor: baremetal
  OvercloudComputeHCIFlavor: baremetal
  ControllerCount: 3
  ComputeHCICount: 2
  BarbicanSimpleCryptoGlobalDefault: true
EOF

cat ~/templates/node-info.yaml 
sed -i 's/Compute/ComputeHCI/' templates/environments/net-bond-with-vlans.yaml templates/environments/network-environment.yaml templates/ips-from-pool-all.yaml
less templates/roles_data.yaml 
openstack overcloud roles generate Controller ComputeHCI -o templates/roles_data.yaml
ls -lh templates/roles_data.yaml 
date
vi comp
vi /etc/hosts 
sudo vi /etc/hosts 
vi  templates/roles_data.yaml
THT=/usr/share/openstack-tripleo-heat-templates/
ls
cd $THT
ls
mv ~/rendered/ /bak-rendered/
mv ~/rendered/ ~/bak-rendered/
tools/process-templates.py -r ~/templates/roles_data.yaml -n ~/templates/network_data.yaml -o ~/rendered
cd ~
ls
cd  rendered/
ls
cp ~/rendered/environments/network-isolation.yaml ~/templates/environments/
cp ~/rendered/environments/net-bond-with-vlans.yaml ~/templates/environments/
cp ~/rendered/network/config/bond-with-vlans/computehci.yaml ~/templates/network/config/bond-with-vlans/
cd ../templates/environments/
ls -lh
cd ..
ls -lh
ls -lhtr
cd ..
 cat > ~/templates/scheduler-hints.yaml <<EOF
parameter_defaults:
  ControllerSchedulerHints:
    'capabilities:node': 'controller-%index%'
  ComputeHCISchedulerHints:
    'capabilities:node': 'compute-%index%'
EOF

openstack baremetal introspection list
openstack baremetal node set overcloud-ctrl01 --property capabilities=node:controller-0,boot_option:local
openstack baremetal node set overcloud-ctrl02 --property capabilities=node:controller-1,boot_option:local
openstack baremetal node set overcloud-ctrl03 --property capabilities=node:controller-2,boot_option:local
openstack baremetal node set overcloud-compute01 --property capabilities=node:compute-0,boot_option:local
openstack baremetal node set overcloud-compute02 --property capabilities=node:compute-1,boot_option:local
vi ~/deploy-with-hci.sh
cd  templates/
less HostnameMap.yaml 
cat /fencing.yaml 
cat fencing.yaml 
cat ceph-config.yaml
openstack  baremetal  node list
cat node-info.yaml 
cat ~/containers-prepare-parameter.yaml 
cat /environments/
cat environments/network-isolation.yaml
cat ~/templates/HostnameMap.yaml
at  ~/templates/ips-from-pool-all.yaml
cat  ~/templates/ips-from-pool-all.yaml
cat  /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible-external.yaml
cat  ceph-external.yaml
vi /home/stack/templates/stf-connectors.yaml
ls
curl -v stf-default-interconnect-5671-service-telemetry.apps-crc.testing:443
cat /etc/hosts 
cat /etc/resolv.conf 
curl -v stf-default-interconnect-5671-service-telemetry.apps-crc.testing:443
ping 192.168.130.11
vi /etc/hosts 
sudo vi /etc/hosts 
curl -v stf-default-interconnect-5671-service-telemetry.apps-crc.testing:443
cd ..
ls
cat deploy-with-hci.sh 
cat templates/stf-connectors.yaml 
tmux a
openstack volume list
. overcloudrc 
openstack volume list
openstack volume show 7ec2b5a9-44f3-45a6-9f6c-2402e1dce3fc
exit
openstack stack resource list overcloud |  grep -v COMP
openstack  stack list
nova list
ssh 192.0.2.201
ssh 192.0.2.201 -l  heat-admin
sudo -i
less /usr/share/openstack-tripleo-heat-templates/environments/barbican-backend-simple-crypto.yaml
cat /usr/share/openstack-tripleo-heat-templates/environments/services/barbican.yaml
grep -ir  BarbicanSimpleCryptoGlobalDefault .
cat ./templates/node-info.yaml
 openstack secret store --name rootPassword --payload 'r3dh4t1!'
. overcloudrc 
 openstack secret store --name rootPassword --payload 'r3dh4t1!'
openstack secret list -f value -c "Secret href" --name rootPassword
openstack secret list
openstack volume type create --encryption-provider nova.volume.encryptors.luks.LuksEncryptor --encryption-cipher aes-xts-plain64 --encryption-key-size 256 --encryption-control-location front-end encryptedvolume
openstack volume create --size 1 --type encryptedvolume volume_encrypted_example
openstack secret list
ssh 192.0.2.202
ssh 192.0.2.202 -l  heat-admin
esit
exit
. stackrc 
nova list
ssh 192.0.2.201 -l heat-admin
exit
. overcloudrc 
openstack loadbalancer listener create --name listenerweb --protocol HTTP --protocol-port 80 lbweb
 openstack loadbalancer pool create --protocol HTTP  --listener listenerweb --lb-algorithm ROUND_ROBIN
vi webserver.sh
nohup sh webserver.sh &
openstack loadbalancer amphora list
openstack loadbalancer create --name lbweb --vip-subnet-id subnet1
openstack  subnet list
 openstack network create public   --external --provider-physical-network datacentre   --provider-network-type vlan --provider-segment 10
 openstack subnet create public-subnet   --no-dhcp --network public --subnet-range 10.0.0.0/24   --allocation-pool start=10.0.0.100,end=10.0.0.200    --gateway 10.0.0.1 --dns-nameserver 8.8.8.8
openstack network agent list
openstack network list
openstack  subnet list
openstack loadbalancer create --name lbweb --vip-subnet-id public-subnet
 openstack loadbalancer amphora list
openstack server list --project service
 openstack loadbalancer amphora list
nova list
tmux 
tmux a
nova list
exit
. stackrc 
openstack overcloud plan list
openstack overcloud role list
mkdir -p ~/templates-custom/templates/
openstack overcloud roles generate -o ~/templates-custom/roles_data.yaml Controller ComputeInstanceHA Networker ObjectStorage
cat  templates/node-info.yaml 
openstack overcloud role list |  grep -i  hci
cp ~/templates/network_data.yaml ~/templates-custom/
vi ~/templates-custom/network_data.yaml 
less templates-custom/roles_data.yaml 
ls
cd templates-custom/
ls
cd  templates/
ls
cd ..
less network_data.yaml 
vi  roles_data.yaml 
 mkdir ~/rendered-custom
cd /usr/share/openstack-tripleo-heat-templates
tools/process-templates.py -r ~/templates-custom/roles_data.yaml -n ~/templates-custom/network_data.yaml -o ~/rendered-custom
ls
cd  ~/rendered-custom/
ls
cp  -rp network/ ~/templates-custom/
mkdir -p ~/templates-custom/environments
cp  environments/net-bond-with-vlans.yaml ~/templates-custom/environments/
. stackrc 
vi ~/templates-custom/network/config/bond-with-vlans/computeinstanceha.yaml 
vi ~/templates-custom/network/config/bond-with-vlans/networker.yaml 
cp ~/rendered-custom/environments/network-environment.yaml ~/templates-custom/environments/
vim ~/templates-custom/environments/network-environment.yaml 
vim ~/templates-custom/node-info.yaml 
df -h
ironice node-list
openstack  baremetal  node list
openstack baremetal introspection data save 25dc3067-1eec-4e99-92b8-75969ba00a9a  |jq ".inventory.disks"
vim undercloud.conf 
openstack falvor list
openstack flavor list
openstack flavor create --id auto --ram 4096 --disk 40 --vcpus 1 networker
openstack image list
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="networker" networker
openstack flavor show  networker
openstack flavor set --property resources:VCPU=0 --property resources:MEMORY_MB=0 --property resources:DISK_GB=0 --property resources:CUSTOM_BAREMETAL=1 networker
openstack flavor create --id auto --ram 4096 --disk 40 --vcpus 1 compute-instance-ha
openstack flavor set --property "cpu_arch"="x86_64" --property "capabilities:boot_option"="local" --property "capabilities:profile"="compute-instance-ha" compute-instance-ha
openstack flavor set --property resources:VCPU=0 --property resources:MEMORY_MB=0 --property resources:DISK_GB=0 --property resources:CUSTOM_BAREMETAL=1 compute-instance-ha
openstack flavor list
openstack baremetal node set overcloud-ctrl01 --property capabilities=profile:control,boot_option:local
openstack baremetal node set overcloud-compute01 --property capabilities=profile:compute-instance-ha,boot_option:local
openstack baremetal node set overcloud-compute02 --property capabilities=profile:compute-instance-ha,boot_option:local
openstack baremetal node set overcloud-stor01 --property capabilities=profile:swift-storage,boot_option:local
openstack baremetal node set overcloud-networker --property capabilities=profile:networker,boot_option:local
openstack overcloud generate fencing --ipmi-lanplus --ipmi-level administrator --output ~/templates-custom/fencing.yaml ~/nodes.json 
less  ~/templates-custom/fencing.yaml 
vi  deploy-custom.sh
ls  -lh deploy*
chmod 755 deploy-custom.sh 
cd  templates-custom/
ls
cd environments/
ls
cd  ~
tmux 
grep -irl  heat_template_version templates-custom/
less  templates-custom/network/provider_network.yaml 
vi templates-custom/network/provider_network.yaml 
grep -ir  heat_template_version templates-custom/
grep -ir  heat_template_version templates
openstack list
openstack  stack list
nova list
tmux ls
tmux a -t 2
openstack  stack list
openstack stack reource list 58a2a48e-3142-4ce3-bed2-bc24c8e36d27
openstack stack resource list  overcloud |  grep -v  COMP
openstack stack resource list  56df1ee6-bac8-4767-ad6d-d7109f183283
nova list
openstack server delete e49557e4-870b-4804-acc2-02ab38875745
nova list
tmux a -t 2
openstack  stack list
tmux a -t 2
ls  -lh /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml 
less  /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml 
vi /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml 
diff /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml rendered-custom/network/config/bond-with-vlans/networker.yaml 
vi /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml 
grep - ProviderNetworkMtu templates-custom/network/config/bond-with-vlans/networker.yam
grep -il ProviderNetworkMtu templates-custom/network/config/bond-with-vlans/networker.yam
grep -il ProviderNetworkMtu templates-custom/network/config/bond-with-vlans/networker.yaml 
grep -i ProviderNetworkMtu templates-custom/network/config/bond-with-vlans/networker.yaml 
grep -i ProviderNetworkMtu rendered-custom/network/config/bond-with-vlans/networker.yaml
vi /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml 
vi rendered-custom/network/config/bond-with-vlans/networker.yaml
vi rendered-custom/network/config/bond-with-vlans/computeinstanceha.yaml 
vi /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml 
diff /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml rendered-custom/network/config/bond-with-vlans/networker.yaml 
tmux a -t 2
openstack  baremetal  node list
sudo -i
openstack  baremetal  node show 9628010c-2f09-40cf-9dc3-988589e8d48d
openstack  baremetal  node show ad72ff59-6f07-4b2f-8a56-d5b67288ffb8
openstack  baremetal  node show 3c545e32-da27-4569-9ac6-24700f44f06b
openstack  server list
openstack server show  ad72ff59-6f07-4b2f-8a56-d5b67288ffb8
openstack stack resource list  overcloud |  grep -v COMP
ssh 192.0.2.7
ssh 192.0.2.7 -l  heat-admin
nova list
ssh 192.0.2.14
ssh 192.0.2.14 -l  heat-admin
nova list
sudo -i
ssh  192.0.2.6 -l  heat-admin
openstack overcloud profiles list
cat templates-custom/node-info.yaml 
openstack  baremetal  node show overcloud-compute02
tmux a -t 2
cd  templates-custom/
/usr/share/openstack-tripleo-heat-templates/tools/yaml-validate.py .
vi ./environments/network-environment.yaml
openstack overcloud netenv validate -f environments/network-environment.yaml
l 
cd ..
vi #!/bin/bash
vi test.sh
diff test.sh deploy-custom.sh 
cat deploy-custom.sh | grep -i compute-instanceha
cat deploy-custom.sh | grep -i network
grep -ir  NeutronPhysicalBridge templates-custom/
cd  -
ls
vi  network_data.yaml 
vi ~/templates-custom/roles_data.yaml 
vi  ~/templates-custom/network/config/bond-with-vlans/computeinstanceha.yaml 
vi ~/templates-custom/environments/network-environment.yaml 
vim ../deploy-custom.sh 
vim ../deploy-with-hci.sh 
vim ../deploy-custom.sh 
vim ../deploy-with-hci.sh 
grep -i network-environment.yaml ../deploy-with-hci.sh
grep -i network-environment.yaml ../deploy-custom.sh
vim ../deploy-custom.sh 
vim ../deploy-with-hci.sh 
vi ../templates/environments/network-isolation.yaml 
THT=/usr/share/openstack-tripleo-heat-templates/
vi  $THT/environments/network-isolation.yaml
vi  /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml
vi  /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.j2.yaml 
vim ../deploy-with-hci.sh 
cd ..
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/network/config/bond-with-vlans/networker.yaml
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/network/config/bond-with-vlans/computeinstanceha.yaml
grep -ir  br-ctlplane templates-custom
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/environments/network-environment.yaml 
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/environments/net-bond-with-vlans.yaml 
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/*
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/node-info.yaml 
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/roles_data.yaml 
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/network_data.yaml 
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/fencing.yaml 
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/environments/
python3 -c "import yaml,sys;yaml.load(open(sys.argv[1]).read())" /home/stack/templates-custom/environments/net-bond-with-vlans.yaml 
tmux a -t 2
nova list
ssh 192.0.2.22
ssh 192.0.2.22 -l  heat-admin
