resource "google_compute_address" "static_ip" {
  project      = var.project_id
  name         = var.ip_name
  region       = var.region
  address_type = "EXTERNAL"
}
