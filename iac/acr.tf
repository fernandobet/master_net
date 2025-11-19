resource "azurerm_container_registry" "acr"{
    name = "mymasternet${var.env_id}eusacr"
    resource_group_name = azurerm_resource_group.nu-masternet-dev-eus-rg.name
    location = azurerm_resource_group.nu-masternet-dev-eus-rg.location
    sku = "Standard"
    admin_enabled = true
    public_network_access_enabled = true

    tags={
        environment = var.env_id
        src= var.src_key
    }

}