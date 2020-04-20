provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "personal"
}

provider "aws" {
  alias = "us-east-2"
  version = "~> 2.0"
  region  = "us-east-2"
  profile = "personal"
}
