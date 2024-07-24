output "static_ip" {
  description = "The static IP address."
  value       = google_compute_address.static_ip.address
}
