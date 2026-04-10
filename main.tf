module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "ec2" {
  source = "./modules/ec2"

  subnet_id     = module.vpc.public_subnet_id
  instance_type = var.instance_type
}

module "s3" {
  source = "./modules/s3"
}
