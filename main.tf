provider "google" {
  credentials = var.credentials_json
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  versioning {
    enabled = true
  }
}
