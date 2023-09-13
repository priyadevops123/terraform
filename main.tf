resource "aws_instance" "mycentos" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "jenkins"
  subnet_id = "subnet-0ddecaa69756eb3b3"

  tags = {
    Name = "mycentos"
  }
}

resource "aws_security_group_rule" "example" {
  type              = "ingress"
  from_port         = 0
  to_port           = 8080
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = "sg-027d0b1d228d718d3"
}
