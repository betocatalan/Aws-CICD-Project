provider "aws" {
  region = var.region
}


module "vpc" {
  source               = "./modules/vpc"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
}


module "network" {
  source = "./modules/network"
  region = var.region
  vpc_main_id     = module.vpc.vpc_main_id
  public_subnet  = module.vpc.public_subnet
}


module "instances" {
  source = "./modules/instances"
  region = var.region
  vpc_main_id     = module.vpc.vpc_main_id
  public_subnet  = module.vpc.public_subnet
  
  instance_type = var.instance_type

  public_sg_ingress  = var.public_sg_ingress
  public_sg_egress   = var.public_sg_egress
}