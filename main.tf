provider "google" {
  project = "master-243612"
  region  = "asia-northeast1"
  credentials = "${file(".credentials/terraform.json")}"
}

data "google_client_config" "current" {}
