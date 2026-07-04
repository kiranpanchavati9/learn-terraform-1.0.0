data "aws_ami" "example" {
  filter {
    name   = "name"
    values = ["RHEL-10.2.0_HVM_GA-20260521-x86_64-0-Hourly2-GP3"]
  }

  owners           = ["798701233543"] # This is the AWS account ID for the RHEL 9 DevOps Practice AMI   
}

output "ami" {
  value = data.aws_ami.example # This is the AMI ID for the RHEL 9 DevOps Practice AMI
}

provider "aws" {
  region = "us-east-1"
}