# terraform-aws-vpc
Custom Terraform  Module for AWS VPC with EC2 instance with SSM access

## Configure Terraform Provider
```
export AWS_PROFILE="training-aws"
export AWS_DEFAULT_REGION="eu-central-1"
```
or change main.tf like this
```
provider "aws" {
  region  = "eu-central-1"
  profile = "training-aws"
}
```

## Configure Terraform variables
```
export AWS_PROFILE="training-aws"
export AWS_DEFAULT_REGION="eu-central-1"
export TF_VAR_name="aws-vpc"
```
## Init
```
terraform init
```

## Plan
```
terraform plan
```

## Apply
```
terraform apply -auto-approve
```

## Destroy
```
terraform destroy -auto-approve
```
