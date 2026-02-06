locals {
  config_default = yamldecode(file("${path.module}/configs/dev.yml"))
  config         = merge(local.config_default)
}
