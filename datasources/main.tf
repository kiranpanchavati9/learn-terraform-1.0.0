data "aws_ami" "example" {
  filter {
    name   = "name"
    values = ["RHEL-10.2.0_HVM_GA-20260521-x86_64-0-Hourly2-GP3"]
  }

  owners = ["309956199498"]
}

output "ami" {
  value = data.aws_ami.example.id
}

data "aws_security_group" "example" {
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }
}

output "security_group" {
  value = data.aws_security_group.example.id
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami                    = data.aws_ami.example.id
  vpc_security_group_ids = [data.aws_security_group.example.id]
  instance_type          = "t3.small"
  tags = {
    Name = "learn-terraform-1.0.0"
  }
}

output "instance" {
  value = aws_instance.example.id
}