data "aws_security_group" "default" {
  name   = "default"
  vpc_id = module.vpc.vpc_id
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_caller_identity" "current" {}
