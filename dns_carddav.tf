resource "aws_route53_record" "carddavs_autodiscover" {
  count = var.create_carddav_autodiscover ? 1 : 0

  name    = "_carddav._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 0 0 ."]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

resource "aws_route53_record" "carddav_autodiscover" {
  count = var.create_carddav_autodiscover ? 1 : 0

  name    = "_carddavs._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 1 443 carddav.fastmail.com"]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

