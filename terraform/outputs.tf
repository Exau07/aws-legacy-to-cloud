# ID du VPC
output "vpc_id" {
  description = "ID du VPC"
  value       = aws_vpc.this.id
}

# IDs des subnets publics
output "public_subnets" {
  description = "Liste des subnets publics"
  value       = aws_subnet.public[*].id
}

# IDs des subnets privés
output "private_subnets" {
  description = "Liste des subnets privés"
  value       = aws_subnet.private[*].id
}