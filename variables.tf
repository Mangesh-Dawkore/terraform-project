variable "aws_region" {
  description = "the aws region to create thing in"
  default     = "ap-south-1"
}

variable "cidr" {
  description = "Enter the CIDR range required for VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Enter the VPC name for VPC"
  type        = string
  default     = "bank-vpc"
}


variable "jenkins-security-grpup" {
  description = "security group for Ec2 instance"
  type        = string
  default     = "jenkins-sgp"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "jenkins-server"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-07ffb2f4d65357b42"
}

variable "versioning" {
  type        = bool
  description = "(Optional) A state of versioning."
  default     = true
}
variable "acl" {
  type        = string
  description = " Defaults to private "
  default     = "private"
}
variable "bucket_prefix" {
  type        = string
  description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
  default     = "my-s3bucket-"
}
variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the bucket."
  default = {
    environment = "DEV"
    terraform   = "false"
  }
}
variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     = "amaz"
}
