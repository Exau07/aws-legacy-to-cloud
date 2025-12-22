# Sécurité Terraform

## Gestion des identifiants
- Terraform utilise un rôle IAM dédié.
- Pas d'identifiants d'administrateur à longue durée de vie.
- Rôle assumé via AWS STS.

## Avantages
- Réduction du rayon d'action.
- Audit complet via CloudTrail.
- Posture prête pour la production.
