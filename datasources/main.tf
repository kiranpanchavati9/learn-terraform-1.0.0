data "aws_ami" "example" {
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  owners           = ["973714476888"] # This is the AWS account ID for the RHEL 9 DevOps Practice AMI   
}

output "ami" {
  value = data.aws_ami.example # This is the AMI ID for the RHEL 9 DevOps Practice AMI
}

provider "aws" {
  region = "us-east-1"
}