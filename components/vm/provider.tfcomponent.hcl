provider "google" {
  # project is read from env (GOOGLE_PROJECT) or can be passed via inputs
  region = var.region
}