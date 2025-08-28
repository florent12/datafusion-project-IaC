terraform {
  backend "gcs" {
    bucket = "projet-tf-state-dev"
    prefix = "terraform/state"
  }
}