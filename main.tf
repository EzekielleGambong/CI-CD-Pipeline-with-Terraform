provider "google" {
  credentials = var.google_credentials
  project     = "cloudengrprojs"
  region      = "us-central1"
}

variable "google_credentials" {
  type    = string
  default = ""
}

resource "google_storage_bucket" "my-bucket" {
  name          = "demobucket_withterra"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}