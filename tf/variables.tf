variable "region" {
  description = "Region on AWS to Deploy"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDRs for the PUBLIC subnet"
}

variable "public_sg_ingress" {
  description = "public_subnet INGRESS rules"
}

variable "public_sg_egress" {
  description = "public_subnet EGRESS rules"
}

variable "instance_type" {
  description = "Instance type for EC2"
}