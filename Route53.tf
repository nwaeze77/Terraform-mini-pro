resource "aws_route53_zone" "hosted_zone" {
  name = "uchenwanne.live"
}
resource "aws_route53_record" "subdomain" {
  zone_id = aws_route53_zone.hosted_zone.zone_id
  name    = "terraform-test.uchenwanne.live"
  type    = "A"
  alias {
    name                   = aws_lb.wanneskilb.dns_name
    zone_id                = aws_lb.wanneskilb.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "test" {
  allow_overwrite = true
  name            = "uchenwanne.live"
  ttl             = 172800
  type            = "NS"
  zone_id         = aws_route53_zone.hosted_zone.zone_id

  records = [
    aws_route53_zone.hosted_zone.name_servers[0],
    aws_route53_zone.hosted_zone.name_servers[1],
    aws_route53_zone.hosted_zone.name_servers[2],
    aws_route53_zone.hosted_zone.name_servers[3],
  ]
}
