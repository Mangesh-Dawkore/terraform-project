variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}

variable "versioning" {
  type        = bool
  description = "(Optional) A state of versioning."
  default     = true
}