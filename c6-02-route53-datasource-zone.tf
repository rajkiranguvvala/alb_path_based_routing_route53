data "aws_route53_zone" "cloudspotdev" {
  name         = "cloudspot.dev"
  

}

output "cloudspotdev_zoneid" {
    description = "The Hosted Zone id of the desired Hosted Zone"
    value = data.aws_route53_zone.cloudspotdev.zone_id     
}
output "cloudspotdev_domain_name" {
    description = "Domain name of the hosted zone"
    value = data.aws_route53_zone.cloudspotdev.name
  
}