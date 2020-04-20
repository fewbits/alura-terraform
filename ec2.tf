resource "aws_instance" "dev" {
  count = 3
  ami = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
}

resource "aws_instance" "dev4" {
  ami = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
  depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
  ami = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev5"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
}

resource "aws_instance" "dev6" {
  provider = aws.us-east-2
  ami = "ami-0f7919c33c90f5b58"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev6"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh-us-east-2.id}"]
  depends_on = [aws_dynamodb_table.dynamodb-homologacao]
}
