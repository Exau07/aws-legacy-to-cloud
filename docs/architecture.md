# Architecture réseau AWS

## 🎯 Objectif
Mettre en place un réseau AWS sécurisé, hautement disponible et adapté
à l'hébergement d'une application web métier.

## 🏗️ Description
L'architecture repose sur :
- Un VPC dédié
- Deux zones de disponibilité (HA)
- Des subnets publics pour le Load Balancer
- Des subnets privés pour les instances EC2 applicatives

## 🔐 Sécurité
- Aucune EC2 exposée directement à Internet
- Accès sortant contrôlé via NAT Gateway
- Séparation stricte des flux publics / privés

## 🌍 Haute disponibilité
- Répartition des ressources sur 2 AZ
- Possibilité de montée en charge horizontale

## 🧠 Justification des choix
| Composant | Raison |
|--------|--------|
| VPC dédié | Isolation réseau |
| Subnets privés | Sécurité applicative |
| NAT Gateway | Sorties Internet maîtrisées |
| Multi-AZ | Résilience |

🚀 Commit GitHub (exemple)