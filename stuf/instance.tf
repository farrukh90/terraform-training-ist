resource "aws_instance" "web" {
  count		= "${var.count}"
  key_name	= "${var.key_name}"
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address  = "true"
  tags = {
     Name        = "${var.Name}_${var.environment}_${count.index +1}"
     Environment = "${var.environment}"

  }
   
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y", 
      "sudo yum install telnet -y" 
  ]
  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = "${file("~/.ssh/id_rsa")}"
    host = "self"
    }
  }
}


resource "aws_instance" "webs" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address  = "true"
  tags = {
     Name        = "${var.Name}_${var.environment}_${count.index +1}"
     Environment = "${var.environment}"

  }
}

