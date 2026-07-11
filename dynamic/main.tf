resource "aws_security_group" "splunk-ports-firewall-rules" {
  name        = "allow-splunk-ports-firewall-rules"
  description = "Allow Splunk ports inbound traffic and all outbound traffic"

  tags = {
    Name = "splunk-ports-firewall-rules"
  }
}

resource "aws_security_group_ingress_rule" "splunk-ports-firewall-rules" {
    security_group_id = aws_security_group.splunk-ports-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 8089
    to_port           = 8089
    ip_protocol       = "tcp"
}

resource "aws_security_group_ingress_rule" "splunk-ports-firewall-rules" {
    security_group_id = aws_security_group.splunk-ports-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 9997
    to_port           = 9997
    ip_protocol       = "tcp"
}

resource "aws_security_group_ingress_rule" "splunk-ports-firewall-rules" {
    security_group_id = aws_security_group.splunk-ports-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 8000
    to_port           = 8000
    ip_protocol       = "tcp"
}


resource "aws_security_group_egress_rule" "splunk-ports-firewall-rules" {
    security_group_id = aws_security_group.splunk-ports-firewall-rules.id
    cidr_ipv4         = "0.0.0.0/0"
    ip_protocol       = "-1"
}

