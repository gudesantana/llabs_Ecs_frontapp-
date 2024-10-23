provider "aws" {
  access_key = ""
  secret_key = ""
  region     = var.aws_region
  profile    = var.aws_profile
  # shared_config_files      = ["/.aws/config"]
  # shared_credentials_files = ["/.aws/credentials"]

  # assume_role {
  #   role_arn     = "arn:aws:iam::${var.aws_account_id}:role/OrganizationAccountAccessRole"
  #   session_name = "SESSION_NAME"
  #   external_id  = "EXTERNAL_ID"
  # }
}