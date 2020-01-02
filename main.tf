provider "google" {
  credentials = file("my-project-key.json")
  project     = "place-project-id-here"
  region      = "us-west1"
}

resource "random_id" "instance_id" {
  byte_length = 8
}

resource "google_storage_bucket" "storage-bucket" {
  force_destroy = true
  name     = "storage-bucket-${random_id.instance_id.hex}"
  location = "US"
}