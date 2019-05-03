//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "app.terraform.io/rogercorp/vpc/aws"
  version = "1.64.0"

  azs = "us-west-2b"
  cidr_block = "10.0.0.0/16"
}
