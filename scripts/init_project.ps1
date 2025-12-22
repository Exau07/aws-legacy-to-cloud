# ===============================================
# Script PowerShell - Initialisation du projet
# Compatible Windows / Linux / macOS
# ===============================================

$ProjectName = "aws-legacy-to-cloud"

Write-Host "🚀 Initialisation du projet : $ProjectName"

New-Item -ItemType Directory -Path $ProjectName -Force | Out-Null
Set-Location $ProjectName

# Dossiers
$folders = @("terraform", "architecture", "docs", "scripts")
foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
}

# Fichiers Terraform
$terraformFiles = @(
    "provider.tf", "variables.tf", "vpc.tf", "outputs.tf",
    "ec2.tf", "alb.tf", "asg.tf", "iam.tf", "security.tf"
)

foreach ($file in $terraformFiles) {
    New-Item -ItemType File -Path "terraform\$file" -Force | Out-Null
}

# Documentation
$docFiles = @("architecture.md", "migration_strategy.md", "security.md", "finops.md")
foreach ($file in $docFiles) {
    New-Item -ItemType File -Path "docs\$file" -Force | Out-Null
}

# Scripts
New-Item -ItemType File -Path "scripts\user_data.sh" -Force | Out-Null

# README
@"
# AWS – Migration d'une application legacy vers une architecture Cloud Native

## 🎯 Objectif
Migration d'une application legacy vers AWS.

## 📚 Documentation
Voir le dossier /docs.
"@ | Out-File -FilePath "README.md" -Encoding utf8

# .gitignore
@"
.terraform/
*.tfstate
*.tfstate.backup
terraform.tfvars
.idea/
.vscode/
.DS_Store
"@ | Out-File -FilePath ".gitignore" -Encoding utf8

Write-Host "✅ Projet prêt"