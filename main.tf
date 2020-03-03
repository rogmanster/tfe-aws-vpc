module "vpc" {
  source  = "app.terraform.io/rogercorp/vpc/aws"
  version = "2.24.0"
  
  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  
  #~toggle below secondary cidr blocks to invoke run trigger change~#
  secondary_cidr_blocks = [ "10.139.0.0/16" ]
  private_subnets = ["10.140.1.0/24", "10.140.2.0/24", "10.140.3.0/24"]
  public_subnets  = ["10.140.101.0/24", "10.140.102.0/24", "10.140.103.0/24"]
  cidr            = "10.140.0.0/16"
}
  
