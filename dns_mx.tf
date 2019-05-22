resource "aws_route53_record" "mx" {
  count = "${var.create_mx ? 1 : 0}"

  name    = "${data.aws_route53_zone.current.name}"
  records = ["20 in2-smtp.messagingengine.com.", "10 in1-smtp.messagingengine.com."]
  ttl     = "${var.dns_ttl}"
  type    = "MX"
  zone_id = "${var.zone_id}"
}

resource "aws_route53_record" "mx_wildcard" {
  count = "${var.create_wildcard_mx ? 1 : 0}"

  name    = "*.${data.aws_route53_zone.current.name}"
  records = ["20 in2-smtp.messagingengine.com.", "10 in1-smtp.messagingengine.com."]
  ttl     = "${var.dns_ttl}"
  type    = "MX"
  zone_id = "${var.zone_id}"
}
