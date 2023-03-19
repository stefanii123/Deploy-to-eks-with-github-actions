#var.tf file

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}