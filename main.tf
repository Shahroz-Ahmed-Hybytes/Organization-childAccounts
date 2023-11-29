provider "aws" {
  region  = "ap-southeast-1" 
  access_key = "nil"
  secret_key = "nil"
   # Update with your desired region
}

module "sandbox" {
  source     = "./modules/sandbox"
  ou_name    = var.sandbox_ou_name
}

module "child_account" {
  source          = "./modules/child_account"
  account_name = var.account_name
  account_email = var.account_email
  ou_id = module.sandbox.ou_id
}

/*output "sandbox_account_id" {
  value = module.child_account.account_id
}
*/
