
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr
  tags = {
    name = "vpc-name"
  }
}
resource "aws_security_group" "jenkins_sg" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    name = var.jenkins-security-grpup
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "jenkins_instance" {
  ami                    = var.ami_id
  key_name               = var.key_name
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  tags = {
    Name = var.instance_name
  }
}

# Create Elastic IP address
resource "aws_eip" "myFirstInstance" {
  vpc      = true
  instance = aws_instance.jenkins_instance.id
  tags = {
    Name = "my_elastic_ip"
  }
}