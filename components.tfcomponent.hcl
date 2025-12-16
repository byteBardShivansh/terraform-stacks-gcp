component "vm" {
  source = "./components/vm"

  for_each = var.regions

  providers = {
    google = provider.google.regional[each.key]
  }

  inputs = {
    region = each.key
  }
}