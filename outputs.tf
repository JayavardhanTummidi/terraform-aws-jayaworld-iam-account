output "account_id" {
    description = "The IAM Account Alias data source allows access to the account alias for the effective account in which Terraform is working"
    value = data.aws_iam_account_alias.jaya-world-alias.account_alias
}