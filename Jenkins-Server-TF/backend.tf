terraform {
  backend "s3" {
    bucket         = "mys3-sravs-bucket-12345"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
  required_version = ">= 1.9.3"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
