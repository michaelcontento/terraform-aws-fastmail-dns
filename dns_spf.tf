resource "aws_route53_record" "spf" {
  count = "${var.create_spf ? 1 : 0}"

  name    = "${data.aws_route53_zone.current.name}"
  records = ["v=spf1 include:spf.messagingengine.com ?all"]
  ttl     = "${var.dns_ttl}"
  type    = "TXT"
  zone_id = "${var.zone_id}"
}
