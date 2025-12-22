terraform {
  # Version minimale de Terraform requise
  # Permet de garantir la compatibilité et la stabilité du code
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider AWS
# Les credentials sont récupérés via :
# - variables d'environnement
# - ~/.aws/credentials
provider "aws" {
  region = var.aws_region
}