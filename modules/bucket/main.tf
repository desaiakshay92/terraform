resource "google_storage_bucket" "tf_state" {
  name     = var.bucket_name
  location = var.region
  project  = var.project_id
}