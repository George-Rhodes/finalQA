resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "AKSCluster"
  location            = "UK South"
  resource_group_name = var.rg_name
  private_cluster_enabled = true
  dns_prefix          = "sifa3aks1"

  default_node_pool {
    name       = "aksnodepool"
    node_count = var.nodes_count
    vm_size    = var.vm_size
    os_disk_size_gb = 20
    #type = VirtualMachineScaleSets
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

  addon_profile {
    kube_dashboard {
      enabled = true
    }
  }

}