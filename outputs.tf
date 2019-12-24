output "bucket_id" {
  value       = "${join("", aws_s3_bucket.default.*.id)}"
  description = "Bucket Name (aka ID)"
}

output "bucket_arn" {
  value       = "${join("", aws_s3_bucket.default.*.arn)}"
  description = "Bucket ARN"
}

output "access_key_id" {
  value       = module.s3-user.access_key_id
  description = "The access key ID"
}

output "secret_access_key" {
  sensitive   = true
  value       = module.s3-user.secret_access_key
  description = "The secret access key. This will be written to the state file in plain-text"
}
