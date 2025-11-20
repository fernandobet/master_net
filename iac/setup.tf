terraform{
    required_providers {
      azurerm ={
        source = "hashicorp/azurerm"
        version = "4.53.0"
      }
    }
//Con esto le diremos a terraform que el archivo .tfstate ahora lo almacenara
//en la nube y no localmente. Se volvio a ejecutar el comando terraform init
    backend "azurerm"{
      resource_group_name = "nu-iac-dev-eus-rg"
      storage_account_name = "nuiacdeveusact"
      container_name = "terraform"
      key = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = var.subscription_id
}