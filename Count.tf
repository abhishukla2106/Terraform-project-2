provider "aws"{
  region ="ap-south-1"
}


resource "aws_instance" "web" {
  count = length(var.ami)
  instance_type = "t2.micro"
  ami = var.ami[count.index]

  tags = {
    Name = var.aviral[count.index],
    Owner = "Aviral rajput"
  }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
  }
}
