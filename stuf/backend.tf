terraform {
  backend "s3" {
    bucket = "terraform-training-farrukh"
    key    = "vet/eu-west-1/sharedtools/qa/infrastructure.tfstate"
    region = "eu-west-1"
  }
}
