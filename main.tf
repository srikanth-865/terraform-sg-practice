resource "aws_security_group" "main" {
  name        = local.common_name 
  description = "Allow trafffic from {var.sg_name} to ${var.project} and ${var.environment}"
  vpc_id      = local.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags =  local.common_tags
  }