resource "aws_route53_record" "carddav_autodiscover_pop3" {
  count = var.create_email_autodiscover ? 1 : 0

  name    = "_pop3._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 0 0 ."]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

resource "aws_route53_record" "carddav_autodiscover_pop3s" {
  count = var.create_carddav_autodiscover ? 1 : 0

  name    = "_pop3s._tcp.${data.aws_route53_zone.current.name}"
  records = ["10 1 995 pop.fastmail.com"]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

