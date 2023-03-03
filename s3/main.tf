resource "aws_s3_bucket" "vikash-bucket" {
bucket = var.bucket_name
tags = {
  name = "Vikash Kumar"
  Owner = "vikash.kumar@cloudeq.com"
  purpose = "training"
  
}

}

