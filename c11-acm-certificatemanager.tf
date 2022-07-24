module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "2.14.0"

   domain_name  = trimsuffix(data.aws_route53_zone.cloudspotdev.name,".")
   zone_id      = data.aws_route53_zone.cloudspotdev.zone_id

  subject_alternative_names = [
    "*.cloudspot.dev"    
 ]

#   wait_for_validation = true

  tags = local.common_tags
}
output "acm_certificate_arn" {
  description = "The ARN of the certificate"
  value       = module.acm.this_acm_certificate_arn
}