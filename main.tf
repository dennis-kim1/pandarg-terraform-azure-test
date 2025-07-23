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
}
resource "azurerm_windows_web_app" "res-0" {
  app_settings                             = {}
  client_affinity_enabled                  = true
  client_certificate_enabled               = false
  client_certificate_exclusion_paths       = ""
  client_certificate_mode                  = "Required"
  custom_domain_verification_id            = "" # Masked sensitive attribute
  enabled                                  = true
  ftp_publish_basic_authentication_enabled = false
  https_only                               = true
  location                                 = "westus"
  name                                     = "appprgtestterraform-dev"
  public_network_access_enabled            = true
  resource_group_name                      = "rg-prg-terraform-dev-wus-01"
  service_plan_id                          = "/subscriptions/3153ba4d-e56a-4976-8039-d9b3145cb822/resourceGroups/rg-prg-tipmanagement-dev-wus-01/providers/Microsoft.Web/serverFarms/asp-prg-tipmanagement-dev-wus-01"
  site_credential                          = [] # Masked sensitive attribute
  tags = {
    "Created By"                                     = "Bernardo Kummerfeldt"
    Environment                                      = "Development"
    "Start date of the project"                      = "04/23/2025"
  }
  virtual_network_backup_restore_enabled         = false
  virtual_network_subnet_id                      = ""
  webdeploy_publish_basic_authentication_enabled = false
  zip_deploy_file                                = ""

  site_config {
    always_on                                     = true
    api_definition_url                            = ""
    api_management_api_id                         = ""
    app_command_line                              = ""
    container_registry_managed_identity_client_id = ""
    container_registry_use_managed_identity       = false
    default_documents                             = ["Default.htm", "Default.html", "Default.asp", "index.htm", "index.html", "iisstart.htm", "default.aspx", "index.php", "hostingstart.html"]
    ftps_state                                    = "FtpsOnly"
    health_check_eviction_time_in_min             = 0
    health_check_path                             = ""
    http2_enabled                                 = false
    ip_restriction_default_action                 = ""
    load_balancing_mode                           = "LeastRequests"
    local_mysql_enabled                           = false
    managed_pipeline_mode                         = "Integrated"
    minimum_tls_version                           = "1.2"
    remote_debugging_enabled                      = false
    remote_debugging_version                      = ""
    scm_ip_restriction_default_action             = ""
    scm_minimum_tls_version                       = "1.2"
    scm_use_main_ip_restriction                   = false
    use_32_bit_worker                             = true
    vnet_route_all_enabled                        = false
    websockets_enabled                            = false
    worker_count                                  = 1
    application_stack {
      current_stack                = ""
      docker_image_name            = ""
      docker_registry_password     = "" # Masked sensitive attribute
      docker_registry_url          = ""
      docker_registry_username     = ""
      dotnet_core_version          = ""
      dotnet_version               = "v9.0"
      java_container               = ""
      java_container_version       = ""
      java_embedded_server_enabled = false
      java_version                 = ""
      node_version                 = ""
      php_version                  = "Off"
      python                       = false
      tomcat_version               = ""
    }
  }
  sticky_settings {
    app_setting_names       = ["ASPNETCORE_ENVIRONMENT", "SendGridApiKey"]
    connection_string_names = []
  }
}
