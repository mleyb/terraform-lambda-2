variable "aws_access_key" {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}

variable "aws_region" {
  default     = "eu-west-1"
  description = "AWS Region"
}

variable "s3_bucket_name" {
  default     = "mleyb-lambda-bucket"
  description = "S3 Bucket Name"
}