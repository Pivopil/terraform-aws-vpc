locals {
  user_arn_elements       = split("/", data.aws_caller_identity.current.arn)
  username                = element(local.user_arn_elements, length(local.user_arn_elements) - 1)
  availability_zone_names = data.aws_availability_zones.available.names
  az_number               = length(local.availability_zone_names)
  private_subnets_cidrs   = [for intex in range(local.az_number) : cidrsubnet(var.cidr, 4, intex)]
  public_subnets_cidrs    = [for intex in range(local.az_number) : cidrsubnet(var.cidr, 4, intex + local.az_number)]
}
