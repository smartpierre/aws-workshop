locals {
  tags  = {
    Owner        = "figures"
    Stack        = "aws-workshop-${local.my_name}"
    Environment  = "sandbox"
    Made-by      = "changeme"
  }

  my_name = "changeme"

  s3_readonly_actions = [
    "s3:ListBucket",
    "s3:GetObject",
    "s3:GetBucketLocation",
    "s3:GetObjectVersion",
  ]
}
