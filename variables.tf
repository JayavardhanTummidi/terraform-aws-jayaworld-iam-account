variable "region" {
    type = string
    default = "us-east-1"
}

variable "account_alias" {
    type = string
    description = "Must be not more than 63 characters. Valid characters are a-z, 0-9, and - (hyphen)."
}

variable "hard_expiry" {
    description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
    type = bool
    default = false
}

variable "max_password_age" {
    description = "The number of days that an user password is valid"
    type = number
    default = 20
}

variable "minimum_password_length" {
    description = "Minimum length to require for user passwords"
    type = number
    default = 8
}

variable "password_reuse_prevention" {
    description = "The number of previous passwords that users are prevented from reusing"
    type = number
    default = 8
}

variable "require_lowercase_characters" {
    description = "Whether to require lowercase characters for user passwords"
    type = bool
    default = true
}

variable "require_numbers" {
    description = "Whether to require numbers for user passwords"
    type = bool
    default = true
}

variable "require_symbols" {
    description = "Whether to require symbols for user passwords"
    type = bool
    default = true
}

variable "require_uppercase_characters" {
    description = "Whether to require uppercase characters for user passwords"
    type = bool
    default = true
}