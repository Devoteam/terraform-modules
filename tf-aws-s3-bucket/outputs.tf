output "bucket_id" {
  value       = local.bucket_id
  description = "Bucket Name (aka ID)"
}

output "bucket_arn" {
  value       = join("", aws_s3_bucket.this[*].arn)
  description = "Bucket ARN"
}
