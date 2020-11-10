resource "aws_s3_bucket" "website_bucket" {
  bucket = "site-${var.domain_name}"
  acl = "private"
  policy = data.aws_iam_policy_document.website_policy.json
  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = "site-${var.domain_name}"
  key = "index.html"
  source = "./dist/index.html"
  content_type = "text/html"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("./dist/index.html")
  depends_on = [
    aws_s3_bucket.website_bucket,
  ]
}