variable "aws_region" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "hosted_zone_id" {
  type = string
}

provider "aws" {
  region = var.aws_region
}

module "website" {
  source = "./infra"
  domain_name = var.domain_name
  aws_region = var.aws_region
  hosted_zone_id = var.hosted_zone_id
}