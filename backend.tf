terraform {
  backend "s3" {
    bucket       = "ajay9447-terraform-state-062502181286"
    key          = "s3-bucket/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}