variable "aws_region" {
  description = "AWS region where the S3 bucket will be created."
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Globally unique prefix for the S3 bucket name. AWS appends a random suffix."
  type        = string
  default     = "ajay9447-terraform-s3-"

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9.-]{2,48}[a-z0-9-]$", var.bucket_prefix))
    error_message = "bucket_prefix must be 4-50 characters, lowercase, and use only letters, numbers, dots, and hyphens."
  }
}

variable "environment" {
  description = "Environment tag applied to AWS resources."
  type        = string
  default     = "dev"
}

variable "force_destroy" {
  description = "Allow Terraform to delete a non-empty bucket. Keep false outside temporary testing."
  type        = bool
  default     = false
}