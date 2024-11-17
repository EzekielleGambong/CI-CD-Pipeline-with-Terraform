provider "google" {
  credentials = file("credentials.json")
  project     = "cloudengrprojs"
  region      = "us-central1"
}

resource "google_storage_bucket" "my-bucket" {
  name          = "demobucket_withterra"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}