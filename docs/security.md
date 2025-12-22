# Terraform Security

## Credentials Management
- Terraform uses a dedicated IAM role
- No long-lived admin credentials
- Role assumed via AWS STS

## Benefits
- Reduced blast radius
- Full audit via CloudTrail
- Production-ready posture