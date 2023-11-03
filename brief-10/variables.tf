variable "name" {
        default = "paul-base"
}

variable "location" {
    default = "westeurope"
}

variable "cidr" {
    default = ["10.0.0.0/16"]
  
}

variable "address_prefixes" {
  default = ["10.0.1.0/24"]

}

variable "aks_node_pool_config" {
  default = {
    default = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_D2_v2"
    }
  }
}

variable "manifest" {
  type = map(string)
  default = {
    "vote":"vote_manifest"
    "autoscale_vote":"autoscale_vote_manifest"
    "vote_service":"vote_manifest"
    "redis":"redis_manifest"
    "redis_pvc":"redis_pvc_manifest"
    "secrets":"secrets_manifest"
    "storage":"storage_manifest"
    "secrets2":"secrets2_manifest"
  }
  
}