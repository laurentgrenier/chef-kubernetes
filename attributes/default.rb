default['kubernetes']['container_runtime']                  = 'docker'
default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd' # other possible values are: static_pods
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.16.2'
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
default['kubernetes']['ssl']['keypairs']                    = %w(apiserver ca front-proxy-client)
default['kubernetes']['ssl']['ca']['public_key']            = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['ssl']['ca']['private_key']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['ssl']['apiserver']['public_key']     = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['ssl']['apiserver']['private_key']    = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['ssl']['front-proxy-client']['public_key']     = '/etc/kubernetes/ssl/front-proxy-client.pem'
default['kubernetes']['ssl']['front-proxy-client']['private_key']    = '/etc/kubernetes/ssl/front-proxy-client-key.pem'
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['requestheader_client_ca_file']       = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['proxy_client_cert_file']             = '/etc/kubernetes/ssl/front-proxy-client.pem'
default['kubernetes']['proxy_client_key_file']              = '/etc/kubernetes/ssl/front-proxy-client-key.pem'
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
default['kubernetes']['checksums']['apiserver']             = 'a1586fa5e5ba45e2bc5263c34dbe346f3c291dd9b051dc4eeec7b6847f955b30'
default['kubernetes']['checksums']['controller-manager']    = '4e9283561c1160083bb71c62ab71e6ce24e39fac3a92334ef2b53e8bbf93e3dd'
default['kubernetes']['checksums']['proxy']                 = 'c364945a00bf45b04bf846cdc259ad49b2ff7448a7b4488b0c2449e795247c8e'
default['kubernetes']['checksums']['scheduler']             = '15ad697bb0c392404fd13dd2c5dad69665109e05cfb37195539a6bfe0b38c7fd'
default['kubernetes']['checksums']['kubectl']               = '3ff48e12f9c768ad548e4221d805281ea28dfcda5c18b3cd1797fe37aee3012e'
default['kubernetes']['checksums']['kubelet']               = '0c24425d7cc029bffd86bfbedcb6a63cd42c21052c3248e43918ef15d3fc03ee'
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
