resource "aws_route53_record" "imap_autodiscover" {
  count = var.create_email_autodiscover ? 1 : 0

  name    = "_imap._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 0 0 ."]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

resource "aws_route53_record" "imaps_autodiscover" {
  count = var.create_email_autodiscover ? 1 : 0

  name    = "_imaps._tcp.${data.aws_route53_zone.current.name}"
  records = ["0 1 993 imap.fastmail.com"]
  ttl     = var.dns_ttl
  type    = "SRV"
  zone_id = var.zone_id
}

