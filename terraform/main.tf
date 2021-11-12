provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-042e8287309f5df03"
  instance_type = var.instancing
  provisioner "local-exec" { 
   command = "echo  ${aws_instance.example.private_ip} >> one.txt"
}
}
