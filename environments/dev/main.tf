
provider "aws" {
  region     = var.aws_region
  access_key = var.hardik_devops_access
  secret_key = var.hardik_devops_secret
}

terraform {
  required_version = "1.7.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }
  }
}

variable "project_name" {}
variable "environment" {}
variable "vpc_cidr" {}
variable "public_subnets" {}
variable "private_subnets" {}
variable "default_tags" {}
variable "aws_region" {}
variable hardik_devops_access {}
variable hardik_devops_secret {}

module "aws_vpc" {
  source          = "../../modules/aws_vpc_module"
  project_name    = var.project_name
  environment     = var.environment
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  default_tags    = var.default_tags
}
