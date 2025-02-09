terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.19.0"
    }
  }
}

provider "google" {

    credentials = file("C:/Users/arkyy/Code/Terraform/gcp_key.json")
  project = var.project_id
  region = var.region
  zone = var.zone
}

