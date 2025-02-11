# Instances
resource "aws_instance" "core" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = false
  key_name                    = var.key_name
  tags                        = var.tags
}

# Security Groups
resource "aws_security_group" "core" {
  name        = "core"
  description = "Allow all inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [""]
  }
}

# Load Balancers
resource "aws_lb" "core" {
  name               = "core"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.core.id]
  subnets            = var.subnets
}

