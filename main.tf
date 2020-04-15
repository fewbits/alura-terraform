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
}