provider "aws" {
  shared_credentials_file = "/dev/null" # require environment variables
  region                  = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "openoakland-infra"
    key    = "dns/terraform.tfstate"
    region = "us-west-2"
  }
}
