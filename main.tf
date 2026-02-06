

module "api_gateway" {
  source   = "./modules/api_gateway"
  stage    = "dev"
  api_name = "navitas"
}
