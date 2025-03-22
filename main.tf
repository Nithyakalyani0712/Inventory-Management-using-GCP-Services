variable "credentials_file" {
  type = string
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = "possible-arbor-449017-k8"
  region      = "us-central1"
}


resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  versioning {
    enabled = true
  }
}
