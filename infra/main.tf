resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allows inbound TLS traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
  }

  egress {
    description = "Allows a sending information to anywhere."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }

  tags = {
    project = "ygo"
  }
}