resource "aws_route53_record" "carddav_autodiscover_submission" {
  count = var.create_email_autodiscover ? 1 : 0

  name    = "_submission._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 1 587 smtp.fastmail.com"]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

