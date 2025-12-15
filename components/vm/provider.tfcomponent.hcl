required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 4.80"
  }
}

provider "google" "default" {
  config {
    project = var.project_id
    region  = var.region
  }
}