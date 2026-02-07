

module "api_gateway" {
  source      = "./modules/api_gateway"
  stage       = local.config.environment
  api_name    = local.config.api_gateway.name
  auto_deploy = local.config.api_gateway.auto_deploy
}


module "parameter_store" {
  source = "./modules/parameter_store"
  name   = local.config.parameter_store.name
  type   = local.config.parameter_store.type
}
