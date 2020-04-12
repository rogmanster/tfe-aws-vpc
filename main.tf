module "vpc" {
  source  = "app.terraform.io/rogercorp/vpc/aws"
  version = "2.24.0"
  
  name            = var.name
  #~toggle below secondary cidr blocks to invoke run trigger change~#
  #secondary_cidr_blocks = [ "10.139.0.0/16" ]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  cidr            = var.cidr
}
  
