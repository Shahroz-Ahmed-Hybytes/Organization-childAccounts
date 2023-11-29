variable "sandbox_ou_name" {
  description = "Name of the Organizational Unit for Sandbox"
  type        = string
}

variable "account_name" {
  description = "Name of the AWS account for the child account"
  type        = string
}

variable "account_email" {
  description = "Email address for the AWS account for the child account"
  type        = string
}
