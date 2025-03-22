variable "credentials_json" {
  description = "The GCP credentials JSON string (from GitHub secret)"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket to create"
  type        = string
}
