terraform {
    required_providers {
        aws = {
            source = "hashicrop/aws"
            version = "5.98.0"
        }
    }
    backend "s3" {
        bucket = "84s-remote-state"
        key    = "provisioner"
        region = "us-east-1"
        encrypt        = true
        use_lockfile   = true
    }
}

provider "aws" {
    # configuration options
}