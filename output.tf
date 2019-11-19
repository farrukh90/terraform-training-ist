output "instance_dns" {
  value = "${aws_instance.web.public_dns}"
}
output "instance_IP" {
  value = "${aws_instance.web.public_ip}"
}
