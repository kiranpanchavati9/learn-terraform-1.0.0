resource "aws_security_group" "splunkers-firewall-rules" {
  name        = "allow-splunkers-firewall-rules"
  description = "Allow Splunk ports inbound traffic and all outbound traffic"
  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = var.ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
