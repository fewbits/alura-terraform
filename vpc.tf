resource "aws_security_group" "acesso_ssh" {
  name        = "acesso_ssh"
  description = "acesso_ssh"
  # vpc_id      = "${aws_vpc.main.id}"

  ingress {
    # description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["191.165.196.166/32"] 
  }

  tags = {
    Name = "acesso_ssh"
  }
}
