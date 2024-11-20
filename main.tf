provider "google" {
  project     = "cloudengrprojs"
  region      = "us-central1"
  credentials = file("./credentials.json")
}


resource "google_storage_bucket" "my-bucket" {
  name          = "demobucket_withterra"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}