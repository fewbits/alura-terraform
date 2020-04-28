variable "amis" {
  type = map
  default = {
    "us-east-1" = "ami-07ebfd5b3428b6f4d"
    "us-east-2" = "ami-0f7919c33c90f5b58"
  }
}

variable "cdirs_acesso_remoto" {
  type = list
  default = ["191.165.196.166/32", "191.165.196.167/32"]
}

variable "key_name" {
  type = string
  default = "terraform-aws"
}
