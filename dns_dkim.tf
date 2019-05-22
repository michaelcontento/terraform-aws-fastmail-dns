resource "aws_route53_record" "dkim" {
  count = "${var.create_dkim_cnames ? 3 : 0}"

  name    = "fm${count.index + 1}._domainkey.${data.aws_route53_zone.current.name}"
  records = ["fm${count.index + 1}.${data.aws_route53_zone.current.name}dkim.fmhosted.com."]
  ttl     = "${var.dns_ttl}"
  type    = "CNAME"
  zone_id = "${var.zone_id}"
}
