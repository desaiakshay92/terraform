variable "project_id" {
  description = "Project ID to deploy resource"
  type        = string
}

variable "region" {
  description = "Region in which you want to deploy resource"
  type        = string
}

variable "network_name" {
  description = "Name of VPC Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of subnet"
  type        = string
}

variable "subnet_ip_range" {
  description = "IP range of subnet"
  type        = string
}
