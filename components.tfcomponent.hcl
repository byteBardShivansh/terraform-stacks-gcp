component "vm" {
  source = "./components/vm"

  providers = {
    google = provider.google.default
  }

  inputs = {
    name         = var.name
    machine_type = var.machine_type
    image        = var.image
    zone         = var.zone
    environment  = var.environment
  }
}