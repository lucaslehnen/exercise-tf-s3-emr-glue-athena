terraform {
  cloud {
    organization = "lucaslehnen"

    workspaces {
      name = "exercise-tf-s3-emr-glue-athena"
    }
  }
}

