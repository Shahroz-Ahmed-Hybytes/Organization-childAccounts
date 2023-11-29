provider "aws" {
  alias  = "child"
  region = "ap-southeast-1"  # Update with your desired region
}

# Use the existing organization ID here
data "aws_organizations_organization" "existing" {
  # Replace "your-existing-organization-id" with your actual organization ID

}

/*
resource "aws_organizations_account" "sandbox_account" {
  name  = var.account_name
  email = var.account_email
  role_name = "OrganizationAccountAccessRole"
  parent_id = data.aws_organizations_organization.existing.roots.0.id
}

  # Note: organizations_id is not needed in the latest versions of the AWS provider
  # If you're using an older version, you may need to upgrade or omit this argument

*/

resource "aws_organizations_account" "child_account" {
  name      = var.account_name
  email     = var.account_email
  parent_id = var.ou_id  # Use the provided OU ID here
  # Additional account settings...
}


