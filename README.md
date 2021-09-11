> **Thanks for using jaya-world modules** 

> **Example to Create account alias name with the password policies**

module "jayaworld-iam-account" {

  source  = "JayavardhanTummidi/jayaworld-iam-account/aws"
  
  version = "0.3.0"

# insert required variables here

account_alias = "welcome-to-jaya-world"

minimum_password_length        = 8

require_lowercase_characters   = true

require_numbers                = true

require_uppercase_characters   = true

require_symbols                = true

allow_users_to_change_password = true


}