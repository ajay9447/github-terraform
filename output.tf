output "bucket_name" {
  description = "Name of the S3 bucket created by Terraform."
  value       = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket created by Terraform."
  value       = aws_s3_bucket.this.arn
}

output "bucket_region" {
  description = "AWS region containing the S3 bucket."
  value       = var.aws_region
}