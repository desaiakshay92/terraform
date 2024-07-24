variable "project_id" {
  description = "The project ID to deploy resources."
  type        = string
}

variable "region" {
  description = "The region to deploy resources."
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket to store tfstate."
  type        = string
}
