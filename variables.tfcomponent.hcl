variable "project_id" {
  type = string
}

variable "regions" {
  type = set(string)
}

variable "audience" {
  type = string
}

variable "service_account_email" {
  type = string
}

variable "identity_token" {
  type      = string
  sensitive = true
}
variable "identity_token" {
  type      = string
  sensitive = true
  ephemeral = true
}