provider "aws" {
    region = var.region
}

#The IAM Account Alias data source allows access to the account alias for the effective account in which Terraform is working
data "aws_iam_account_alias" "jaya-world-alias" {}

# To create IAM account alias 
resource "aws_iam_account_alias" "jaya-world-alias" {
    account_alias = var.account_alias
}

# Manages Password Policy for the AWS Account
resource "aws_iam_account_password_policy" "jaya-world-password-policy" {
    allow_users_to_change_password = true
    hard_expiry = var.hard_expiry
    max_password_age = var.max_password_age
    minimum_password_length = var.minimum_password_length
    password_reuse_prevention = var.password_reuse_prevention
    require_lowercase_characters = var.require_lowercase_characters
    require_numbers = var.require_numbers
    require_symbols = var.require_symbols
    require_uppercase_characters = var.require_uppercase_characters
}