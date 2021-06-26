# provider "aws" {
#   region = "us-west-2"
# }

# store tfstate in s3 and locking information in DynamoDB
terraform {
  backend "s3" {
    encrypt = true
    # cannot contain interpolations
    # bucket = "${aws_s3_bucket.terraform-state-storage-s3.bucket}"
    bucket = "cdp-terraform-state-aaeznt"
    # region = "${aws_s3_bucket.terraform-state-storage-s3.region}"
    region = "us-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
    key = "terraform-state/terraform.tfstate"
  }
}