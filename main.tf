terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {


}

resource "aws_iam_user" "terraform" {
  name = "terraform"
  path = "/"
}