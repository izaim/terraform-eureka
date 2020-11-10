variable "aws_region" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "hosted_zone_id" {
  type = string
  description = "Route53 Hosted Zone ID"
}
