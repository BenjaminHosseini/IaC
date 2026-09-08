terraform {
  required_version = ">= 1.15.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "terraform-benjaminhosseini-remote-backend"
    key    = "04-backends/state.tfstate"
    region = "us-west-1"
  }

}

provider "aws" {
  region = "us-west-1"
}