data "aws_ami" "example" {
  owners           = ["973714476888"]
  filter {
    name   = "ami"
    values = ["RHEL-9-DevOps-Practice"]
  }
}

output "ami" {
  value = data.aws_ami.example.id # This is the AMI ID for the RHEL 9 DevOps Practice AMI
}

provider "aws" {
  region = "us-east-1"
}