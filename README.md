# 🚀 Migration d'une application legacy vers AWS

## 🎯 Objectif
Ce projet simule une mission d’ingénierie Cloud AWS consistant
à migrer une application legacy vers une architecture
Cloud Native, sécurisée et scalable.

---

## 🏗️ Architecture
![Architecture globale](architecture/global-architecture.png)

- VPC multi-AZ
- Subnets publics et privés
- Application Load Balancer
- EC2 en Auto Scaling Group
- Observabilité CloudWatch

---

## 🛠️ Technologies
- AWS (EC2, VPC, ALB, IAM, CloudWatch)
- Terraform
- CloudFormation
- Linux
- Bash / PowerShell

---

## 🔐 Sécurité
- Instances EC2 non exposées à Internet
- Flux réseau contrôlés
- IAM least privilege
- Logs centralisés

---

## 👀 Observabilité & RUN
- CloudWatch Logs
- Alarmes CPU et santé applicative
- Runbook d’exploitation
- Analyse des incidents

---

## 💰 FinOps
- Auto Scaling
- Optimisation des tailles d’instances
- Rétention maîtrisée des logs
- Approche coûts by design

---

## 📚 Documentation
- Dossier d’Architecture Technique : `/docs/PROJECT_OVERVIEW.md`
- Architecture réseau : `/docs/architecture.md`
- Runbook : `/docs/runbook.md`
- Sécurité : `/docs/security.md`
- FinOps : `/docs/finops.md`

---

## 📦 Infrastructure as Code
- Terraform (implémentation principale)
- CloudFormation (équivalence fonctionnelle)