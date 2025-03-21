module "s3-bucket" {
  source = "../../modules/s3"
  env    = var.env
  bucket = var.bucket
  region = var.region
}

module "dynamodb-table" {
  source = "../../modules/dynamoDB"
  env    = var.env
}

module "vpc" {
  source = "../../modules/eks-vpc"
  env    = var.env
  region = var.region
  vpc_name = var.vpc_name
  eks_name = var.eks_name
}

