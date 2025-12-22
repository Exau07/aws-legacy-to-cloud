# Région AWS cible
variable "aws_region" {
  description = "Région AWS dans laquelle les ressources seront déployées"
  type        = string
  default     = "eu-west-1"
}

# Nom du projet (utilisé pour le tagging)
variable "project_name" {
  description = "Nom du projet pour le tagging des ressources"
  type        = string
  default     = "legacy-to-cloud"
}

# CIDR principal du VPC
variable "vpc_cidr" {
  description = "Plage d'adresses IP du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnets publics (Load Balancer)
variable "public_subnets" {
  description = "CIDR des subnets publics (ALB)"
  type        = list(string)
  default     = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

# Subnets privés (EC2 applicatives)
variable "private_subnets" {
  description = "CIDR des subnets privés (EC2)"
  type        = list(string)
  default     = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}