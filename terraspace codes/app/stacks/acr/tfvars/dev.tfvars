// *** Resorce Group Values ***
resource_group_name = "AZ-DEVOPS-PROJECT"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Azure Container Registery (ACR) Values ***
  acr_name            = "acrforjenkins"
  sku                 = "Premium"
  admin_enabled       = true
