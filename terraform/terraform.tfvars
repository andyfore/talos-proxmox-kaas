vpc_main_cidr         = "10.15.31.0/24"            # nodes subnet
gateway               = "10.15.31.1"               # subnet gateway
first_ip              = "5"                      # first ip address of the master-1 node - 10.1.1.5
worker_first_ip       = "8"                      # first ip address of the worker-1 node - 10.1.1.8
proxmox_storage1      = "vms"                    # proxmox storage lvm 1
proxmox_storage2      = "vms2"                   # proxmox storage lvm 2
k8s_version           = "v1.29.2"                # k8s version
kvm_image             = "talos"                  # talos image created by packer
talos_version         = "v1.4"                   # talos version for machineconfig gen
cluster_endpoint      = "https://10.15.31.220:6443" # cluster endpoint to fetch via talosctl
region                = "cluster-1"              # proxmox cluster name
pool                  = "prod"                   # proxmox pool for vms
private_key_file_path = "~/.ssh/id_rsa"          # fluxcd git creds for ssh
public_key_file_path  = "~/.ssh/id_rsa.pub"      # fluxcd git creds for ssh
known_hosts           = "github.com ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEmKSENjQEezOmxkZMy7opKgwFB9nkt5YRrYMjNuG5N87uRgg6CLrbo5wAdT/y6v0mKV0U2w0WZ2YB/++Tpockg="

kubernetes = {
  podSubnets              = "10.244.0.0/16"       # pod subnet
  serviceSubnets          = "10.96.0.0/12"        # svc subnet
  domain                  = "cluster.local.arfore.space"       # cluster local kube-dns svc.cluster.local
  ipv4_vip                = 10.15.31.176/24""           # vip ip address
  apiDomain               = "api.cluster.local.arfore.space"   # cluster endpoint
  talos-version           = "v1.6.5"              # talos installer version
  metallb_l2_addressrange = "10.15.31.230-10.15.31.235" # metallb L2 configuration ip range
  registry-endpoint       = "reg.local.arfore.space"   # set registry url for cache image pull
  # FLUX ConfigMap settings
  sidero-endpoint = "10.15.31.230"
  cluster-0-vip   = "10.15.31.240"
}
