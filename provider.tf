terraform {
    backend "s3" {
        bucket = "rekognition-analysis-s3-serverlessdeploymentbuck-1gqmc7g1sfuul"
        key = "terraform.tfstate"
        region = "us-east-1"
        profile = "dev"
    }
}

provider "aws" {
    region = "us-east-1"
    profile = "dev"

    default_tags {
      tags = {
        Environment = local.env_code
        Terraform = true 
      }
    }
  
}