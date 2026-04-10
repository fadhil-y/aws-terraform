resource "aws_s3_bucket" "bucket" {
  bucket = "my-terraform-demo-bucket-12345"

  tags = {
    Name = "terraform-bucket"
  }
}
