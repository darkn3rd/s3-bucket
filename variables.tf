variable "name" {}

variable "environment" {
  default = "test"
}

variable "contact" {
  default = "yourname@company.com"
}

variable "admin" {
  default = "Administration User"
}

variable "acl" {
  default     = "private"
  description = "canned ACL to apply: 'private', 'public-read', 'public-read-write', 'aws-exec-read', 'authenticated-read', 'bucket-owner-read', 'bucket-owner-full-control', 'bucket-owner-full-control', and 'log-delivery-write'"
}

variable "user_enabled" {
  type        = bool
  default     = false
  description = "Enable to create IAM user with permisison to access the bucket"
}

variable "allowed_bucket_actions" {
  type        = list(string)
  default     = ["s3:PutObject", "s3:PutObjectAcl", "s3:GetObject", "s3:DeleteObject", "s3:ListBucket", "s3:ListBucketMultipartUploads", "s3:GetBucketLocation", "s3:AbortMultipartUpload"]
  description = "Actions that user is permitted to perform on the S3 bucket"
}
