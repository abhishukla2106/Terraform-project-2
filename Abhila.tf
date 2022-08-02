
provider "aws"{
  region ="ap-south-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.24.0"
    }
  }
}
resource "aws_instance" "app_server" {   # for_each loop used for map
    for_each = var.MAP
    ami  = ami-076e3a557efe1aa9c
    instance_type = t2.micro
    tags = {
      Name = each.value.name
      Owner= each.key
  }
}



