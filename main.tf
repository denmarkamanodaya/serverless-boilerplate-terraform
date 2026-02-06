

module "api_gateway" {
  source      = "./modules/api_gateway"
  stage       = local.config.environment
  api_name    = local.config.api_gateway.name
  auto_deploy = local.config.api_gateway.auto_deploy
}
