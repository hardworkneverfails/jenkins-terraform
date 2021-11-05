provider "aws" {
  provider = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-042e8287309f5df0"
  instance_type = "t2.micro"
}
