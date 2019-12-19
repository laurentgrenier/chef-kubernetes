default['kubernetes']['container_runtime']                  = 'docker'
default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd' # other possible values are: static_pods
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.16.4'
default['kubernetes']['keep_versions']                      = 3
default['kubernetes']['image']                              = 'gcr.io/google_containers/hyperkube'
default['kubernetes']['interface']                          = 'eth1'
default['kubernetes']['enable_firewall']                    = true
default['kubernetes']['register_as']                        = 'ip'
default['kubernetes']['proxy_mode']                         = 'iptables' # other possible values are: ipvs
default['kubernetes']['use_sdn']                            = true
default['kubernetes']['sdn']                                = 'weave'
default['kubernetes']['master']                             = '127.0.0.1'
default['kubernetes']['cluster_name']                       = 'kubernetes'
default['kubernetes']['cluster_dns']                        = ['10.222.222.222']
default['kubernetes']['cluster_domain']                     = 'kubernetes.local'
default['kubernetes']['cluster_cidr']                       = '192.168.0.0/16'
default['kubernetes']['node_cidr_mask_size']                = 24
default['kubernetes']['use_cluster_dns_systemwide']         = false
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['ssl']['keypairs']                    = %w(apiserver ca-cluster_signing ca-requestheader front_proxy_client service_account kubelet_client ca-etcd_server ca-etcd_peer etcd_server etcd_peer)
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca-cluster_signing.pem'
default['kubernetes']['requestheader_client_ca_file']       = '/etc/kubernetes/ssl/ca-requestheader.pem'
default['kubernetes']['requestheader_client_ca_key']        = '/etc/kubernetes/ssl/ca-requestheader-key.pem'
default['kubernetes']['service_account_cert_file']          = '/etc/kubernetes/ssl/service_account.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/service_account-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca-cluster_signing.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-cluster_signing-key.pem'
default['kubernetes']['proxy_client_cert_file']             = '/etc/kubernetes/ssl/front_proxy_client.pem'
default['kubernetes']['proxy_client_key_file']              = '/etc/kubernetes/ssl/front_proxy_client-key.pem'
default['kubernetes']['kubelet_client_cert_file']           = '/etc/kubernetes/ssl/kubelet_client.pem'
default['kubernetes']['kubelet_client_key_file']            = '/etc/kubernetes/ssl/kubelet_client-key.pem'
default['kubernetes']['etcd_server_cafile']                 = '/etc/kubernetes/ssl/ca-etcd_server.pem'
default['kubernetes']['etcd_peer_cafile']                   = '/etc/kubernetes/ssl/ca-etcd_peer.pem'
default['kubernetes']['etcd_server_cert_file']              = '/etc/kubernetes/ssl/etcd_server.pem'
default['kubernetes']['etcd_peer_cert_file']                = '/etc/kubernetes/ssl/etcd_peer.pem'
default['kubernetes']['etcd_server_key_file']               = '/etc/kubernetes/ssl/etcd_server-key.pem'
default['kubernetes']['etcd_peer_key_file']                 = '/etc/kubernetes/ssl/etcd_peer-key.pem'
default['kubernetes']['token_auth']                         = false
default['kubernetes']['token_auth_file']                    = '/etc/kubernetes/known_tokens.csv'
default['kubernetes']['docker']['endpoint']                 = 'unix:///var/run/docker.sock'
default['kubernetes']['cgroupdriver']                       = 'cgroupfs'
default['kubernetes']['audit']['enabled']                   = true
default['kubernetes']['audit']['log_path']                  = '/var/log/kubernetes/audit.log'
default['kubernetes']['audit']['log_format']                = 'json' # Known formats are legacy,json.
default['kubernetes']['audit']['log_mode']                  = 'blocking' # Known modes are batch,blocking.
default['kubernetes']['audit']['log_maxbackup']             = 3
default['kubernetes']['audit']['log_maxsize']               = 10
default['kubernetes']['audit']['policy_file']               = '/etc/kubernetes/audit-policy.yaml'
default['kubernetes']['audit_webhook']['enabled']           = false
default['kubernetes']['audit_webhook']['config_file']       = '/etc/kubernetes/audit-webhook.yaml'
default['kubernetes']['audit_webhook']['initial_backoff']   = '10s'
default['kubernetes']['audit_webhook']['version']           = 'audit.k8s.io/v1'
default['kubernetes']['audit_webhook']['mode']              = 'batch' # Known modes are batch,blocking,blocking-strict.
default['kubernetes']['audit_webhook_config']['server']     = ''
default['kubernetes']['feature_gates']                      = {
  'TTLAfterFinished'          => true,
}
default['kubernetes']['packages']['storage_url']            = "https://storage.googleapis.com/kubernetes-release/release/#{node['kubernetes']['version']}/bin/linux/amd64/"
default['kubernetes']['checksums']['apiserver']             = '5eceff3e08a0281480f75e030c1e7b3880ff5d52f83ccf080fbb95c280bec8c0'
default['kubernetes']['checksums']['controller-manager']    = '29630fe6d8da24434147d19099159f0de7027019b86221151f835601d89e5adf'
default['kubernetes']['checksums']['proxy']                 = '0d02fcff143fd89ce1011c130391820778d02333dabe1a1898c35041e79f8fcc'
default['kubernetes']['checksums']['scheduler']             = '9bbeffc66967c32a16586077bf7a13312e535c59a7015d195bcf546d3c60e4f6'
default['kubernetes']['checksums']['kubectl']               = 'bbb2030487ba0570227a48c6faac1b09cad03748f5508c567d078d20feca2df2'
default['kubernetes']['checksums']['kubelet']               = 'a2f1eec9ecccebceb5032322ebc5e8cc054220c41cd4ec7b7b460cb8bfd63481'
default['kubernetes']['addon_manager']['version']           = 'v9.0'
default['kubernetes']['multimaster']['access_via']          = 'haproxy' # other possible values are: direct, dns
default['kubernetes']['multimaster']['haproxy_url']         = '127.0.0.1'
default['kubernetes']['multimaster']['haproxy_port']        = 6443
default['kubernetes']['multimaster']['dns_name']            = ''
default['kubernetes']['encryption']                         = 'aescbc'
default['kubernetes']['cni']['plugins_version']             = '0.8.3'
default['kubernetes']['cni']['plugins'] = {
  'bridge'	=> true,
  'dhcp'	=> true,
  'flannel'	=> true,
  'host-device'	=> true,
  'host-local'	=> true,
  'ipvlan'	=> true,
  'loopback'	=> true,
  'macvlan'	=> true,
  'portmap'	=> true,
  'ptp'	        => true,
  'sample'	=> true,
  'tuning'	=> true,
  'vlan'	=> true,
  'bandwidth'   => true,
  'firewall'    => true,
  'sbr'         => true,
  'static'      => true,
}
default['kubernetes']['node']['packages'] = {
  'iptables'            => true,
  'ebtables'            => true,
  'socat'               => true,
  'ethtool'             => true,
  'kmod'                => true,
  'tcpd'                => true,
  'dbus'                => true,
  'apt-transport-https' => true,
  'conntrack'           => true,
}
