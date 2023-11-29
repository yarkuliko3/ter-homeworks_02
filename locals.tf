locals {
platformw = "netology-${ var.env }-${ var.project }-${ var.role[0] }"
platformd = "netology-${ var.env }-${ var.project }-${ var.role[1] }"
vms_ssh = {ssh-keys = "ubuntu:${var.vms_ssh_root_key}"}
/* metadata = {
    serial-port-enable = var.metadata["metadata"]["serial-port-enable"]
    ssh-keys           = var.metadata["metadata"]["ssh-keys"]
  } */
}

