terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.61.0"
        }
    }
}

provider "aws" {
    region  = var.aws_region
    profile = var.aws_cli_profile
}

locals {
    node_name_prefix = "riak-${var.prefix}"

    required_tags = {
        "riak.test" = ""
    }
}
