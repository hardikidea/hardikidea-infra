# environments/dev/main.tf
module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  region = "us-east-1"
}
