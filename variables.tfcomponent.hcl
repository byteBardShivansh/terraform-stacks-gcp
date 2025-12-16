variable "identity_token" {
  type      = string
  sensitive = true
  ephemeral = true
}

variable "sts_audience" {
  type        = string
  description = "Full Workload Identity Provider resource name"
}

variable "service_account_email" {
  type = string
}

variable "project_id" {
  type = string
}

variable "regions" {
  type = set(string)
}