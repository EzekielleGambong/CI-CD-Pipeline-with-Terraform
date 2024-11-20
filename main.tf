provider "google" {
  project     = "cloudengrprojs"
  region      = "us-central1"
  credentials = file("./credentials.json")
}


resource "google_storage_bucket" "terra_create_bucket" {
  name          = "ezi_buvkeet"
  location      = "US"
  storage_class = "STANDARD"

  public_access_prevention = "enforced"
}