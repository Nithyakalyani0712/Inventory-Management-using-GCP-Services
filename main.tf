provider "google" {
  credentials = var.credentials_json
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "my_bucket" {
  name     = var.bucket_name
  location = var.region
  force_destroy = true  # Allows deleting non-empty buckets during 'terraform destroy'
}

output "bucket_url" {
  value = google_storage_bucket.my_bucket.url
}
