terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
module "eks" {

  source = "https://github.com/DitmirSpahiu/eks-module.git"

  cluster_version="1.24"

  prefixname = "EN"

  eks_addons = ["vpc-cni","coredns","kube-proxy"]

  common_tags = {
  }

  instance_types=["t3.medium"]

  disk_size = 100

  min_size = 2

  desired_size = 2

  max_size = 3

  security_group_rules = [
  ]
}
