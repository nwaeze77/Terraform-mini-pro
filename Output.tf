output "alb_wanneskilb_dns" {
  value = aws_lb.wanneskilb.dns_name

}

output "alb_target_group_arn" {
  value = aws_lb_target_group.alb-wanneski.arn

}

output "Alb_zone_id" {
  value = aws_lb.wanneskilb.zone_id
}
