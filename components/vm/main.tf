terraform {
  required_version = "= 1.13.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.80"
    }
  }
}

resource "google_compute_instance" "this" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  labels = {
    environment = var.environment
  }
}