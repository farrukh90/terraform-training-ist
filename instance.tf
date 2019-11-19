resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address  = "true"
  tags = {
     Name        = "${var.Name}_${var.environment}"
     Environment = "${var.environment}"

  }
}
