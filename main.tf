provider "google" {
  version     = "2.12.0"
  project     = "master-243612"
  region      = "asia-northeast1"
  credentials = file(".credentials/terraform.json")
}

data "google_client_config" "current" {}
