# Proxmox Full-Clone
# ---
# Create new VMs from a clone

resource "proxmox_vm_qemu" "test-vm" {
  for_each = var.vm_params

  define_connection_info = each.value["dci"]

  # VM General Settings
  target_node = each.value["target_node"]
  vmid = each.value["vmid"]
  name = each.value["name"]
  desc = each.value["desc"]
  full_clone = each.value["full_clone"]
  tags = each.value["tags"]

  # VM Advanced General Settings
  onboot = each.value["onboot"]

  # VM OS Settings
  clone = each.value["clone"]

  # VM System Settings
  agent = each.value["agent"]

  # VM CPU Settings
  cores = each.value["cores"]
  sockets = each.value["sockets"]
  cpu = each.value["cpu"]

  # VM Config SCSI
  scsihw = each.value["scsi"]

  # VM Memory Settings
  memory = each.value.memory

  # VM Network Settings
  dynamic network {
    for_each = each.value.network
    content {
        bridge      = network.value.bridge
        model       = network.value.model
    }

  }

  dynamic  disk {
    for_each = each.value.disk
    content {
        storage     = disk.value.storage
        type        = disk.value.type
        size        = disk.value.size
    }
  
  }

  # VM Cloud-Init Settings
  os_type = each.value["os_type"]

  # (Optional) IP Address and Gateway
  ipconfig0 = each.value["ipconfig0"]

  # If your packer image template already has a user and ssh key created then only use this step
  # to create an additional user and ssh key pair
  # (Optional) Default User
  # ciuser = "ubuntu"
  # (Optional) Add your SSH KEY

  # sshkeys = <<EOF
  # #YOUR-PUBLIC-SSH-KEY
  # EOF

}