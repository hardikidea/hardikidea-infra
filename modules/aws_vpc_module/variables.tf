
variable "aws_account" {
  type        = map(any)
  description = "AWS Account"
  default = {
    id         = "214632046863"
    short_name = "default"
  }
}

variable "default_tags" {
  type = map(string)
  description = "Default tags for all the resources"
}

variable "aws_region" {
  description = "The region for the resources"
  default     = "ap-south-1"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
  default = "dev"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  // Optionally, you can provide a default value
  // default     = "10.0.0.0/16"
}


variable "public_subnets" {
  description = "A list of CIDR blocks for the public subnets"
  type        = list(string)
  // Optionally, you can provide a default value
  // default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "A list of CIDR blocks for the private subnets"
  type        = list(string)
  // Optionally, you can provide a default value
  // default     = ["10.0.1.0/24", "10.0.2.0/24"]
}