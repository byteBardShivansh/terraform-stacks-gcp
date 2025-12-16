required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 7.3.0"
  }
}

# Global (non-regional) Google provider
provider "google" "global" {
  config {
    project = var.project_id

    external_credentials {
      audience              = var.sts_audience
      service_account_email = var.service_account_email
      identity_token        = var.identity_token
    }
  }
}

# Regional Google providers (one per region)
provider "google" "regional" {
  for_each = var.regions

  config {
    project = var.project_id
    region  = each.value

    external_credentials {
      audience              = var.sts_audience
      service_account_email = var.service_account_email
      identity_token        = var.identity_token
    }
  }
}