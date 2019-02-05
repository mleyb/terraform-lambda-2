data "archive_file" "func-zip" {
  type        = "zip"
  source_file = "${path.module}/src/func.js"
  output_path = "${path.module}/func.zip"
}
