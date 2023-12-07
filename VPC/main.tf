module "vpc" {
  #Provision instruction
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.2.0"
  # VPC details
  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]


  #enable NAT gateway
  enable_nat_gateway = true
  single_nat_gateway  = true
  tags = {
    Owner = "Navid"
    Environment = "dev"
  }

  # Database subnets 
  database_subnets  = ["10.0.21.0/24", "10.0.22.0/24"]
  create_database_subnet_group           = true
  create_database_subnet_route_table     = true

  # DNS configuration
  enable_dns_hostnames = true
  enable_dns_support   = true

  #Subnets Tags 
  public_subnet_tags = {
    Type = "Public_subnets"
  }

  private_subnet_tags = {
    Type = "private_subnets"

  }

  database_subnet_tags ={
    Type = "DB_Subnets"
  }

  vpc_tags= {
    Type = "My-terra-Vpc"
  }

  igw_tags= {
    Type = "my-igw"
  }


  # Instances launched into the Public subnet should be assigned a public IP address.
  map_public_ip_on_launch = true


}
