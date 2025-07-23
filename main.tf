terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "4.24.0"
    }
  }
}
provider "azurerm" {
  features {}

  subscription_id = "3153ba4d-e56a-4976-8039-d9b3145cb822"
}
resource "azurerm_windows_web_app" "res-0" {
  app_settings                             = {}
  client_affinity_enabled                  = true
  client_certificate_enabled               = false
  enabled                                  = true
  ftp_publish_basic_authentication_enabled = false
  https_only                               = true
  location                                 = "westus"
  name                                     = "appprgtestterraform-dev"
  public_network_access_enabled            = true
  resource_group_name                      = "rg-prg-terraform-dev-wus-01"
  service_plan_id                          = "/subscriptions/3153ba4d-e56a-4976-8039-d9b3145cb822/resourceGroups/rg-prg-tipmanagement-dev-wus-01/providers/Microsoft.Web/serverFarms/asp-prg-tipmanagement-dev-wus-01"
  tags = {
    "Created By"                                     = "Bernardo Kummerfeldt"
    Environment                                      = "Development"
    "Start date of the project"                      = "04/23/2025"
  }
  virtual_network_backup_restore_enabled         = false
  webdeploy_publish_basic_authentication_enabled = false

  site_config {
    always_on                                     = true
    container_registry_use_managed_identity       = false
    default_documents                             = ["Default.htm", "Default.html", "Default.asp", "index.htm", "index.html", "iisstart.htm", "default.aspx", "index.php", "hostingstart.html"]
    ftps_state                                    = "FtpsOnly"
    http2_enabled                                 = false
    load_balancing_mode                           = "LeastRequests"
    local_mysql_enabled                           = false
    managed_pipeline_mode                         = "Integrated"
    minimum_tls_version                           = "1.2"
    remote_debugging_enabled                      = false
    scm_minimum_tls_version                       = "1.2"
    scm_use_main_ip_restriction                   = false
    use_32_bit_worker                             = true
    vnet_route_all_enabled                        = false
    websockets_enabled                            = false
    worker_count                                  = 1
    application_stack {
      dotnet_version               = "v9.0"
      php_version                  = "Off"
      python                       = false
    }
  }
  sticky_settings {
    app_setting_names       = ["ASPNETCORE_ENVIRONMENT", "SendGridApiKey"]
  }
}
