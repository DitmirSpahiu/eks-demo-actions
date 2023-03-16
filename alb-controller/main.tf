terraform {
  # backend "s3" {
  #   bucket = "ctexternalservices-cluster"
  #   key    = "ctexternalservices-cluster/state/terraform.tfstate"
  #   region = "eu-central-1"
  # }
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.53"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.8.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.17.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }

    # http = {
    #   source  = "terraform-aws-modules/http"
    #   version = ">= 2.4.1"
    # }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
