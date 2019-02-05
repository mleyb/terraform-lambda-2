resource "aws_s3_bucket" "lambda-s3-bucket" {
  bucket = "${var.s3_bucket_name}"
  acl    = "private"
}

resource "aws_s3_bucket_object" "lambda-s3-object" {
  bucket = "${aws_s3_bucket.lambda-s3-bucket.id}"
  key = "v1.0.0/func.zip"
  source = "${path.module}/func.zip"
  etag = "${md5(file("${path.module}/func.zip"))}"
}
