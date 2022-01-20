terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.81.0"
    }
  }

  required_version = ">= 1.0.4"
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  for_each = toset(var.rgname)
  
  name     = each.key
  location = var.rglocation
}

# module "stgcreation" {
#   source      = "../terraformclass/module/Storage"
#   for_each    = toset(["srist45dev"])
#   name        = each.key
#   stgrg       = var.rgname
#   stglocation = var.rglocation
#   reptype     = var.stgreptype

#   depends_on = [
#     azurerm_resource_group.example
#   ]


#}
# output "display" {
#   value = azurerm_resource_group.example.id
  
# }
# module "vmcreation" {
#   source = ""
  
# }