//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "app.terraform.io/rogercorp/vpc/aws"
  version = "1.64.0"

  azs = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.139.1.0/24", "10.139.2.0/24", "10.139.3.0/24"]
  public_subnets  = ["10.139.101.0/24", "10.139.102.0/24", "10.139.103.0/24"]
  cidr = "10.139.0.0/16"
}
  
data "aws_ami" "rhel_ami" {
  most_recent      = true
  owners           = ["309956199498"]

  filter {
    name   = "name"
    values = ["*RHEL-7.3_HVM_GA-*"]
  }
}
  
