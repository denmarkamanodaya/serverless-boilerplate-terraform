resource "aws_ssm_parameter" "this" {
  name  = var.name
  type  = var.type
  value = "{}"
  tier  = var.tier
}
