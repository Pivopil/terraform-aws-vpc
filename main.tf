provider "aws" {
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.39.0"

  name = var.name
  cidr = var.cidr

  azs             = local.availability_zone_names
  private_subnets = local.private_subnets_cidrs
  public_subnets  = local.public_subnets_cidrs

  enable_ipv6 = true

  enable_nat_gateway = true
  single_nat_gateway = true

  create_database_subnet_group       = true
  create_database_subnet_route_table = true

  enable_dns_support   = true
  enable_dns_hostnames = true

  enable_ssm_endpoint              = true
  ssm_endpoint_private_dns_enabled = true
  ssm_endpoint_security_group_ids  = [data.aws_security_group.default.id]

  enable_ssmmessages_endpoint              = true
  ssmmessages_endpoint_private_dns_enabled = true
  ssmmessages_endpoint_security_group_ids  = [data.aws_security_group.default.id]


  enable_ec2messages_endpoint              = true
  ec2messages_endpoint_private_dns_enabled = true
  ec2messages_endpoint_security_group_ids  = [data.aws_security_group.default.id]

  public_subnet_tags = {
    Tier = "Public"
  }

  private_subnet_tags = {
    Tier = "Private"
  }

  tags = {
    Project  = var.name
    Owner    = local.username
    username = local.username
  }

  vpc_tags = {
    Project  = var.name
    Owner    = local.username
    username = local.username
  }
}
