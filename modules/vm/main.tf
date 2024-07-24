resource "google_compute_instance" "tf_vm1" {
  name         = var.vm_name
  project      = var.project_id
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-2204-jammy-v20240701"
    }
  }
  network_interface {
    subnetwork         = var.subnet_name
    subnetwork_project = var.project_id
    access_config {
      nat_ip = var.static_ip
    }
  }
  tags = var.tags
}
