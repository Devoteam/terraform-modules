# Description: This module creates a Lambda Layer.
terraform {
  required_version = ">= 0.13.0"
}

locals {
  fully_qualified_name = "${module.name.id}-${var.layer_name}"
}

module "name" {
  source      = "../tf-label"
  namespace   = var.namespace
  environment = var.environment
  project     = var.project
  component   = var.component
  label_case  = var.label_case
}

resource "aws_lambda_layer_version" "this" {
  layer_name          = local.fully_qualified_name
  filename            = var.filename
  s3_key              = var.s3_key
  s3_bucket           = var.s3_bucket
  s3_object_version   = var.s3_object_version

  compatible_architectures = var.compatible_architectures
  compatible_runtimes = var.compatible_runtimes

  description = var.description
}
