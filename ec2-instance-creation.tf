terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.22.0"
    }
  }
}

provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "./aws-credentials"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0a91cd140a1fc148a"
  instance_type = "t2.micro"
}
