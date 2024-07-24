
provider "google" {
  credentials = file("gcp_key.json")
}

terraform {
  backend "gcs" {
    bucket      = "tf-demo-bucket1"
    prefix      = "/tfstate"
    credentials = "gcp_key.json"
  }
}
