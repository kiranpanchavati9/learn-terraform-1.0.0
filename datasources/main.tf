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

provider "aws" {
  region = "us-east-1"
}