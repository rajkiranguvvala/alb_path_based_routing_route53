resource "aws_route53_record" "app_dns" {
  zone_id = data.aws_route53_zone.cloudspotdev.zone_id
  name    = "apps.cloudspot.dev"
  type    = "A"
    alias {
    name                   = module.onestopnews_alb.this_lb_dns_name
    zone_id                = module.onestopnews_alb.this_lb_zone_id
    evaluate_target_health = true
  }
  
}