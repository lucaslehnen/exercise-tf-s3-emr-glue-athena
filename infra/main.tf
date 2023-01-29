terraform {
  cloud {
    organization = "lucaslehnen"

    workspaces {
      name = "exercise-tf-s3-emr-glue-athena"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = "IGTI"
      Project     = "exercise-tf-s3-emr-glue-athena"
    }
  }
}
