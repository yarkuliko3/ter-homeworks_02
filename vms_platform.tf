###vm vars

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM image"
}

variable "vm_web_platform_v1_id" {
  type        = string
  default     = "standard-v1"
  description = "platform type"
}
variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM image"
}

variable "vm_db_platform_v1_id" {
  type        = string
  default     = "standard-v1"
  description = "platform type" 
}
variable "env" {
  type        = string
  default     = "develop"
}

variable "project" {
  type = string
  default     = "platform"
}

variable "role" {
  type = list(string)
  default     = ["web", "db"]
}
/* variable "vm_db_resource" {
  type = map
  default  = {
    cores  = 2
    memory = 2
    core_fraction = 20
  }
}

variable "vm_web_resource" {
  type = map
  default  = {
    cores  = 2
    memory = 1
    core_fraction = 5
  }
} */
variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
    vm_web_resources = {
      cores          = 2
      memory         = 1
      core_fraction  = 5
    }
  }
}  

variable "metadata" {
 type = object({
   serial-port-enable = number
   ssh-keys           = any 
 })
 default = {
     serial-port-enable = 1
     ssh-keys           = null
   }
}

 
