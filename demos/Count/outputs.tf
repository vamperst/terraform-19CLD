output "address" {
  value = "Instances: ${element(aws_instance.web.*.id, 0)}"
}
output "elb_public" {
  value = "${aws_elb.web.dns_name}"
}
