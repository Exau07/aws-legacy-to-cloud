# RUNBOOK – Exploitation AWS

## 🔎 Supervision
- CloudWatch Logs centralisés
- Alarmes CPU et santé applicative
- Vérification quotidienne du statut ALB

## 🚨 Gestion des incidents

### Application indisponible
1. Vérifier le DNS de l'ALB
2. Vérifier l'état des targets
3. Consulter les logs CloudWatch
4. Vérifier l'Auto Scaling Group

### CPU élevée
- Vérifier la charge applicative
- Ajuster le scaling si nécessaire
- Analyser les requêtes

## 🔁 Actions récurrentes
- Revue hebdomadaire des alarmes
- Nettoyage des logs anciens
- Vérification des coûts AWS

## 🔐 Sécurité
- Aucun accès SSH public
- Accès via bastion (si nécessaire)
- IAM least privilege