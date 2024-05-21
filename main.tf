module "s3_bucket" {
  source  = "app.terraform.io/shriramrajaraman/s3-bucket/aws"

  bucket_prefix = var.prefix
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
