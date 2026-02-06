output "api_endpoint" {
  value = "https://${aws_api_gateway_rest_api.this.id}.execute-api.${data.aws_region.current.name}.amazonaws.com/${var.stage}"
}

data "aws_region" "current" {}
