resource "azurerm_container_app_environment" "mynu-masternet-dev-eus-acae"{
    location = azurerm_resource_group.nu-masternet-dev-eus-rg.location
    resource_group_name = azurerm_resource_group.nu-masternet-dev-eus-rg.name
    name = "nu-masternet-dev-eus-acae"
    log_analytics_workspace_id =azurerm_log_analytics_workspace.my-nu-masternet-eus-law.id

    tags  ={
        environment = var.env_id
        src = var.src_key
    }
}