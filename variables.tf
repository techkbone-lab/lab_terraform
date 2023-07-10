# Définir une variable pour les paramètres de toutes les VM
variable "vm_params" {
  type = map(object({
    dci         = bool
    target_node = string
    vmid        = string
    name        = string
    desc        = string
    full_clone  = bool
    onboot      = bool
    clone       = string
    agent       = number
    cores       = number
    sockets     = number
    cpu         = string
    memory      = number
    scsi        = string
    os_type     = string
    ipconfig0   = string
    tags        = string
    network     = map(object({
      bridge    = string
      model     = string
    }))
    disk        = map(object({
      storage   = string
      type      = string
      size      = string
    }))
  }))
  default = {
    "dock-01" = {
    dci         = false
    target_node = "pve01"
    vmid        = "301"
    name        = "dock-01"
    desc        = "Terraform - deploy"
    full_clone  = true
    onboot      = true
    clone       = "lunar-tpl"
    agent       = 1
    cores       = 2
    sockets     = 1
    cpu         = "host"
    memory      = 2048
    scsi        = "virtio-scsi-pci"
    os_type     = "cloud-init"
    ipconfig0   = "ip=192.168.1.245/24,gw=192.168.1.1"
    tags        = "linux"
    disk = {
      default = {
    storage     = "Unraid"
    type        = "ide"
    size        = "15G"}
    }
    network = {
      default = {
    bridge      = "vmbr0"
    model       = "virtio"}
    }
    },
    "dock-02" = {
    dci         = false
    target_node = "pve02"
    vmid        = "302"
    name        = "dock-02"
    desc        = "Terraform - deploy"
    full_clone  = true
    onboot      = true
    clone       = "lunar-tpl"
    agent       = 1
    cores       = 2
    sockets     = 1
    cpu         = "host"
    memory      = 2048
    scsi        = "virtio-scsi-pci"
    os_type     = "cloud-init"
    ipconfig0   = "ip=192.168.1.246/24,gw=192.168.1.1"
    tags        = "linux"
    disk = {
      default = {
    storage     = "Unraid"
    type        = "ide"
    size        = "15G"}
    }
    network = {
      default = {
    bridge      = "vmbr0"
    model       = "virtio"}
    }
    },
    "dock-03" = {
    dci         = false
    target_node = "pve03"
    vmid        = "303"
    name        = "dock-03"
    desc        = "Terraform - deploy"
    full_clone  = true
    onboot      = true
    clone       = "lunar-tpl"
    agent       = 1
    cores       = 2
    sockets     = 1
    cpu         = "host"
    memory      = 2048
    scsi        = "virtio-scsi-pci"
    os_type     = "cloud-init"
    ipconfig0   = "ip=192.168.1.247/24,gw=192.168.1.1"
    tags        = "linux"
    disk = {
      default = {
    storage     = "Unraid"
    type        = "ide"
    size        = "15G"}
    }
    network = {
      default = {
    bridge      = "vmbr0"
    model       = "virtio"}
    }
    }
  }
}

# # Définir une variable pour les paramètres de disque
# variable "disk_params" {
#   type = map(object({
#     storage = string
#     type    = string
#     size    = string
#   }))
#   default = {
#     default = {
     
#     }
#   }
# }

# # Définir une variable pour les paramètres de réseau
# variable "network_params" {
#   type = map(object({
#     bridge = string
#     model  = string
#     }))
#     default = {
#       default = {

#       }
#     }
# }