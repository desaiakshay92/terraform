variable "project_id" {
  description = "The project ID to deploy resources."
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

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "static_ip" {
  description = "The static IP for the VM."
  type        = string
}

variable "tags" {
  description = "The network tags for the VM."
  type        = list(string)
  default     = []
}
