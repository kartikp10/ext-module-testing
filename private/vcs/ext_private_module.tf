module "s3_bucket" {
  #source = "git@github.com:kartikp10/terraform-aws-s3-bucket1.git"
  # source = "github.com/kartikp10/terraform-aws-s3-bucket1"
  #source = "git::https://github.com/kartikp10/terraform-aws-s3-bucket1.git"
  source = "git::ssh://git@github.com/kartikp10/terraform-aws-s3-bucket1.git"
  acl                    = "private"
  enabled                = true
  user_enabled           = true
  versioning_enabled     = false
  allowed_bucket_actions = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
  name                   = "app"
  stage                  = "test"
}
