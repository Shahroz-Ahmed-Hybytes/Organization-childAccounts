provider "aws" {
  alias  = "sandbox"
  region = "ap-southeast-1"  # Update with your desired region
}



resource "aws_organizations_organizational_unit" "sandbox" {
  name      = var.ou_name
  parent_id = data.aws_organizations_organization.existing.roots.0.id
}
# Use the existing organization ID here
data "aws_organizations_organization" "existing" {
  # Replace "your-existing-organization-id" with your actual organization ID
}
