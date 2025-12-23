# FinOps – Cost Optimization Guidelines

## Objectifs
- Réduire les coûts inutiles
- Adapter les ressources à la charge réelle
- Intégrer le coût dès la conception (cost by design)

## Principes appliqués
- Right sizing des instances
- Suppression des ressources inutilisées
- Logs avec rétention maîtrisée
- Pas de sur-provisionnement

## Bonnes pratiques AWS
- Préférer Auto Scaling plutôt que des instances surdimensionnées
- Utiliser des types d’instances adaptés (t3, t4g)
- Auditer régulièrement via AWS Cost Explorer

## Indicateurs suivis
- Coût par environnement
- Coût par service
- Taux d’utilisation CPU / mémoire