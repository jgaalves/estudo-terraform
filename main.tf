provider "aws" {
  region  = "us-east-1"
  version = "~> 3.0"
}

/*provider "aws" {
  alias   = "west-2"
  region  = "us-west-2"
  version = "~> 3.0"
} */

terraform {
  backend "s3"{
    bucket = "descomplicando-terraform-john"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
  
}