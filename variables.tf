variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR"
  type        = string
  default     = "172.17.0.0/16"
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}
