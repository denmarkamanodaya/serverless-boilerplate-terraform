# REST API (root "/" only)
resource "aws_api_gateway_rest_api" "this" {
  name = var.api_name
}

# Deployment (empty API is valid)
resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
}

# Stage
resource "aws_api_gateway_stage" "this" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  deployment_id = aws_api_gateway_deployment.this.id
  stage_name    = var.stage
}
