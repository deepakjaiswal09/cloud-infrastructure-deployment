 terraform {
  backend "s3" {
    bucket = "aws-terra-s3"
    key    = "backend/awsprojectusingaws.tfstate"
    region = "eu-north-1"
    dynamodb_table = "remote-backend"
  }
}