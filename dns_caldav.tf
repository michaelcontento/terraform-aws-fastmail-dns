resource "aws_route53_record" "caldav_autodiscover" {
  count = var.create_caldav_autodiscover ? 1 : 0

  name    = "_caldav._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 0 0 ."]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

resource "aws_route53_record" "caldavs_autodiscover" {
  count = var.create_caldav_autodiscover ? 1 : 0

  name    = "_caldavs._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 1 443 caldav.fastmail.com"]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

