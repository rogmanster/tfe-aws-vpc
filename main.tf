data "aws_availability_zones" "available" {
}

module "vpc" {
  source  = "app.terraform.io/rogercorp/vpc-PMR/aws"
  version = "2.64.0"


  name            = var.name
  #~toggle below secondary cidr blocks to invoke run trigger change~#
  #secondary_cidr_blocks = [ "10.140.0.0/16" ]
  azs              = [data.aws_availability_zones.available.names[0], data.aws_availability_zones.available.names[1], data.aws_availability_zones.available.names[2]]
  private_subnets = ["10.139.1.0/24", "10.139.2.0/24", "10.139.3.0/24"]
  public_subnets  = ["10.139.101.0/24", "10.139.102.0/24", "10.139.103.0/24"]
  cidr            = "10.139.0.0/16"
}
