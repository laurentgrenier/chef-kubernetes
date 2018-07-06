default['kubernetes']['container_runtime']                  = 'docker'
default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd' # other possible values are: static_pods
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.11.0'
default['kubernetes']['keep_versions']                      = 3
default['kubernetes']['image']                              = 'gcr.io/google_containers/hyperkube'
default['kubernetes']['interface']                          = 'eth1'
default['kubernetes']['enable_firewall']                    = true
default['kubernetes']['register_as']                        = 'ip'
default['kubernetes']['use_sdn']                            = true
default['kubernetes']['sdn']                                = 'weave'
default['kubernetes']['master']                             = '127.0.0.1'
default['kubernetes']['cluster_name']                       = 'kubernetes'
default['kubernetes']['cluster_dns']                        = ['10.222.222.222']
default['kubernetes']['cluster_domain']                     = 'kubernetes.local'
default['kubernetes']['cluster_cidr']                       = '192.168.0.0/16'
default['kubernetes']['node_cidr_mask_size']                = 24
default['kubernetes']['use_cluster_dns_systemwide']         = false
default['kubernetes']['ssl']['keypairs']                    = %w(apiserver ca)
default['kubernetes']['ssl']['ca']['public_key']            = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['ssl']['ca']['private_key']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['ssl']['apiserver']['public_key']     = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['ssl']['apiserver']['private_key']    = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['token_auth']                         = false
default['kubernetes']['token_auth_file']                    = '/etc/kubernetes/known_tokens.csv'
default['kubernetes']['docker']                             = 'unix:///var/run/docker.sock'
default['kubernetes']['cgroupdriver']                       = 'cgroupfs'
default['kubernetes']['feature_gates']                      = {
  'RotateKubeletServerCertificate' => true,
}
default['kubernetes']['audit']['enabled']                   = true
default['kubernetes']['audit']['log_file']                  = '/var/log/kubernetes/audit.log'
default['kubernetes']['audit']['maxbackup']                 = 3
default['kubernetes']['packages']['storage_url']            = "https://storage.googleapis.com/kubernetes-release/release/#{node['kubernetes']['version']}/bin/linux/amd64/"
default['kubernetes']['checksums']['apiserver']             = 'b2121d80321171b93311871d2bddaebbbf9012dbb85232c91c4936cdee1dc11f'
default['kubernetes']['checksums']['controller-manager']    = '77af351b8d1d99dfa5501dd4498b262167780d8d7e1d26cb8eb512483d51be66'
default['kubernetes']['checksums']['proxy']                 = '109676602b59a0d62329c0dd64c60eea1345b7863ce98f86fe20a73495b91e43'
default['kubernetes']['checksums']['scheduler']             = '76a87299652dc9402e017f45f31b2d8e43a82f976ee8836476a74c52b7d37265'
default['kubernetes']['checksums']['kubectl']               = '7fc84102a20aba4c766245714ce9555e3bf5d4116aab38a15b11419070a0fa90'
default['kubernetes']['checksums']['kubelet']               = '554c97d8475e4b2c3d9040bf3314a1585fef0951322582cb7dd34b877dd9eca3'
default['kubernetes']['addon_manager']['version']           = 'v8.6'
default['kubernetes']['multimaster']['access_via']          = 'haproxy' # other possible values are: direct, dns
default['kubernetes']['multimaster']['haproxy_url']         = '127.0.0.1'
default['kubernetes']['multimaster']['haproxy_port']        = 6443
default['kubernetes']['multimaster']['dns_name']            = ''
default['kubernetes']['encryption']                         = 'aescbc'
default['kubernetes']['cni']['version']                     = '0.6.0'
default['kubernetes']['cni']['plugins_version']             = '0.7.1'
default['kubernetes']['cni']['plugins'] = {
  'bridge'	=>true,
  'dhcp'	=>true,
  'flannel'	=>true,
  'host-device'	=>true,
  'host-local'	=>true,
  'ipvlan'	=>true,
  'loopback'	=>true,
  'macvlan'	=>true,
  'portmap'	=>true,
  'ptp'	        =>true,
  'sample'	=>true,
  'tuning'	=>true,
  'vlan'	=>true,
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
