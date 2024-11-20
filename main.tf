provider "google" {
  project     = "cloudengrprojs"
  region      = "us-central1"
  credentials = file("./credentials.json")
}


resource "google_storage_bucket" "my_bucket" {
  name          = "unique-bucket-name-12345"
  location      = "US"
  storage_class = "STANDARD"

  public_access_prevention = "enforced"
}