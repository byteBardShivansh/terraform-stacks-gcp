identity_token "gcp" {
  audience = ["hcp.workload.identity"]
}

deployment "dev" {
  inputs = {
    identity_token        = identity_token.gcp.jwt
    audience              = "hcp.workload.identity"
    service_account_email = "firefly-workflows@sound-habitat-462410-m4.iam.gserviceaccount.com"
    project_id            = "sound-habitat-462410-m4"
    regions               = ["us-central1"]
  }
}