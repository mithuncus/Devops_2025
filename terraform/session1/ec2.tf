resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f" ## we will get it from aws console by searching DevOps-Practice by choosing public images
  instance_type = "t3.micro"

  tags = {
    Name = "Kethana test srvr"
  }
}


resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name
  description = var.sg-description
  #vpc_id      = "${aws_vpc.main.id}"

   ingress {
    description = "Allow All Ports"
    from_port   = var.inbound-from-port
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks  ## internet refrence of CIDR is 0.0.0.0/0 for allowing all
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-all-aws-tags"
  }
}