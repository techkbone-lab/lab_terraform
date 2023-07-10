# Variable entry for vms created
vm_params = {
  dock-01 = {
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
    ide        = "virtio-scsi-pci"
    os_type     = "cloud-init"
    ipconfig0   = "ip=192.168.1.245/24,gw=192.168.1.1"
    disk = {
      storage     = "Unraid"
      type        = "ide"
      size        = "15G"
    }
    network = {
      bridge      = "vmbr0"
      model       = "virtio"}
  },
  dock-02 = {
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
    ide        = "virtio-scsi-pci"
    os_type     = "cloud-init"
    ipconfig0   = "ip=192.168.1.246/24,gw=192.168.1.1"
    disk = {
      storage     = "Unraid"
      type        = "ide"
      size        = "15G"
    }
    network = {
      bridge      = "vmbr0"
      model       = "virtio"}
  },
  dock-03 = {
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
    ide        = "virtio-scsi-pci"
    os_type     = "cloud-init"
    ipconfig0   = "ip=192.168.1.247/24,gw=192.168.1.1"
    disk = {
      storage     = "Unraid"
      type        = "ide"
      size        = "15G"
    }
    network = {
      bridge      = "vmbr0"
      model       = "virtio"}
    
  } 
}