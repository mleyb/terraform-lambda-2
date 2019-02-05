resource "aws_lambda_function" "lambda-function" {
  s3_bucket         = "${aws_s3_bucket_object.lambda-s3-object.bucket}"
  s3_key            = "${aws_s3_bucket_object.lambda-s3-object.key}"
  s3_object_version = "${aws_s3_bucket_object.lambda-s3-object.version_id}"
  function_name     = "func"
  runtime           = "nodejs6.10"
  role              = "${aws_iam_role.lambda_exec.arn}"
  handler           = "func.handler"
}

# Simple IAM role dicating what other AWS services the Lambda function may access
resource "aws_iam_role" "lambda_exec" {
  name = "lambda_exec_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
