resource "google_compute_network" "vpc_network" {
  name    = var.network_name
  project = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip_range
  region        = var.region
  network       = google_compute_network.vpc_network.id
  project       = var.project_id
}
