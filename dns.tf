data "aws_route53_zone" "aws" {
  name = "aws.openoakland.org"
}

resource "aws_route53_record" "oaklandcandidates" {
  zone_id = "${data.aws_route53_zone.aws.zone_id}"
  name    = "oaklandcandidates"
  type    = "A"
  ttl     = "300"
  records = ["192.30.252.153"]
}
