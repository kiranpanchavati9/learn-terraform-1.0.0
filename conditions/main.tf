resource "aws_instance" "splunk-test" {
    count = var.create_ec2_instance == true ? 1 : 0
    instance_type = var.env == "prod" ? "t3.small" : "t3.micro"
    ami           = "ami-00adafae70b8029d8"
    tags = {
        Name = "${var.env}-splunk-test"
  }
}

variable "create_ec2_instance" {
    type = bool
    default = true
}

variable "env" {
    type = string
    default = "prod"
}