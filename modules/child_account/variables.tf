variable "account_name" {
  description = "Name of the AWS account for the child account"
  type        = string
}

variable "account_email" {
  description = "Email address for the AWS account for the child account"
  type        = string
}

/*variable "account_profile" {
  type        = string
  description = "AWS CLI named profile for the child account"
}
*/
variable "ou_id" {
  description = "ID of the organizational unit where the child account should be placed"
  type        = string
}
