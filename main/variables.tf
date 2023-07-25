variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}


variable "instance_type" {
  description = "instance type for ec2"
  default     = "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "jenkins-sgroup-dec-2021"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}
variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-07ffb2f4d65357b42"
}
