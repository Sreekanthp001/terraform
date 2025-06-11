terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.98.0"
        }
    }

    backend "s3" {
        bucket = "84s-remote-state0"  # create this bucket name in aws->s3 
        key    = "remote-state-demo"
        region = "us-east-1"
        encrypt = true
        #dynamodb_table = "84s-remote-state"
        use_lockfile = true
    }
}

provider "aws" {
    # configuration options
}