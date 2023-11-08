module "resource_group"{
    source = "../modules_terraform/resource_group"
    name = var.name
    location = var.location
}

module "vnet" {
    source = "../modules_terraform/vnet"
    name = var.name
    location = var.location
    cidr = var.cidr
    depends_on = [ module.resource_group ]
}

module "subnet"{
    source = "../modules_terraform/subnet"
    name = var.name
    address_prefixes = var.address_prefixes
    location = var.location

    depends_on = [module.vnet ]
}

module "aks" {
    source = "../modules_terraform/aks"
    name = var.name
    aks_node_pool_config = var.aks_node_pool_config
    location = var.location
}

resource "kubernetes_manifest" "redis" {
    manifest =yamldecode(var.redis_manifest) 
}

