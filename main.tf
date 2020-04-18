provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "personal"
}

resource "aws_instance" "dev" {
  count = 3
  ami = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev${count.index}"
  }

  vpc_security_group_ids = ["sg-0b0c7b8ed1621e1b6"]
}

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