deployment "dev" {
  inputs = {
    region       = "us-central1"
    zone         = "us-central1-a"
    name         = "dev-vm"
    machine_type = "e2-medium"
    image        = "debian-cloud/debian-11"
    environment  = "dev"
  }
}