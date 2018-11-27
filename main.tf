provider "azurerm" {
}
resource "azurerm_resource_group" "qwinixterraform" {
	name = "entalyterraform"
	location = "${var.hostedzone}"
}

resource "azurerm_storage_account" "qwinixstorage" {
  name                     = "terraformstoragess"
  resource_group_name      = "${azurerm_resource_group.qwinixterraform.name}"
  location                 = "${var.hostedzone}"
  account_tier             = "${var.acctier}"
	account_kind      			 = "${var.storagetype}"
  account_replication_type = "${var.reptype}"
	access_tier              = "${var.acstier}"
	enable_https_traffic_only = true

  tags {
  	group = "Entaly_terraform"
  }
    
  }
  
  
	# resource "azurerm_storage_container" "qwinixcontainer" {
	#   name                  = "terraformblobcontainer"
	#   resource_group_name   = "${azurerm_resource_group.qwinixterraform.name}"
	#   storage_account_name  = "${azurerm_storage_account.qwinixstorage.name}"
	#   container_access_type = "container"
    
    
    
	# }
	# resource "azurerm_storage_blob" "qwinixblob" {
  # name = "terraformblob"
	#
  # resource_group_name    = "${azurerm_resource_group.qwinixterraform.name}"
  # storage_account_name   = "${azurerm_storage_account.qwinixstorage.name}"
  # storage_container_name = "${azurerm_storage_container.qwinixcontainer.name}"
	#
  # type = "block"
  # size = 1024
	# }
