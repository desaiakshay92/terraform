variable "project_id" {
  description = "The project ID to deploy resources."
  type        = string
}

variable "region" {
  description = "The region to deploy resources."
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_ip_range" {
  description = "The IP range for the subnet."
  type        = string
}

variable "ip-name" {
  description = "Name of Static IP"
  type        = string
}

variable "zone" {
  description = "The zone to deploy resources."
  type        = string
}

variable "vm_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "machine_type" {
  description = "The machine type for the VM instance."
  type        = string
}

variable "tags" {
  description = "The network tags for the VM."
  type        = list(string)
  default     = []
}

# variable "bucket_name" {
#   description = "The name of the GCS bucket to store tfstate."
#   type        = string
# }

module "network" {
  source          = "./modules/network"
  project_id      = var.project_id
  region          = var.region
  network_name    = var.network_name
  subnet_ip_range = var.subnet_ip_range
  subnet_name     = var.subnet_name
}

module "static-ip" {
  source     = "./modules/static-ip"
  ip_name    = var.ip-name
  project_id = var.project_id
  region     = var.region
}

module "vm" {
  source       = "./modules/vm"
  vm_name      = var.vm_name
  zone         = var.zone
  project_id   = var.project_id
  machine_type = var.machine_type
  subnet_name  = var.subnet_name
  static_ip    = module.static-ip.static_ip
  tags         = var.tags
}

module "firewall" {
  source       = "./modules/firewall"
  network_name = var.network_name
  project_id   = var.project_id
}

# module "bucket" {
#   source      = "./modules/bucket"
#   bucket_name = var.bucket_name
#   project_id  = var.project_id
#   region      = var.region

# }


