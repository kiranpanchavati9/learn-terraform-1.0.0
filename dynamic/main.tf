resource "aws_security_group" "splunkers-firewall-rules" {
  name        = "allow-splunkers-firewall-rules"
  description = "Allow Splunk ports inbound traffic and all outbound traffic"

  tags = {
    Name = "splunkers-firewall-rules"
  }
}

resource "aws_security_group_ingress_rule" "splunkers-firewall-rules" {
    security_group_id = aws_security_group.splunkers-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 8089
    to_port           = 8089
    ip_protocol       = "tcp"
}

resource "aws_security_group_ingress_rule" "splunkers-firewall-rules" {
    security_group_id = aws_security_group.splunkers-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 9997
    to_port           = 9997
    ip_protocol       = "tcp"
}

resource "aws_security_group_ingress_rule" "splunkers-firewall-rules" {
    security_group_id = aws_security_group.splunkers-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 8000
    to_port           = 8000
    ip_protocol       = "tcp"
}


resource "aws_security_group_egress_rule" "splunkers-firewall-rules" {
    security_group_id = aws_security_group.splunkers-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    ip_protocol       = "-1"
}

