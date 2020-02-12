//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "app.terraform.io/rogercorp/vpc/aws"
  version = "1.64.0"

  azs = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["10.139.4.0/24", "10.139.5.0/24", "10.139.6.0/24"]
  public_subnets  = ["10.139.101.0/24", "10.139.102.0/24", "10.139.103.0/24"]
  cidr = "10.139.0.0/16"
}
  
  
