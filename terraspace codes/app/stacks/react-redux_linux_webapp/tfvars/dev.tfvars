resource_group_name = "project2-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "react-redux-app-webapp"
always_on= true
docker_image= "reactreduxapp"
docker_image_tag= "latest"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "Z8aBdsb5KwTTCbFOyoaowabqlWLGsIXfKZBzQmisdC+ACRDE6ScM"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://azdevopsacrkaan.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "azdevopsacrkaan"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


