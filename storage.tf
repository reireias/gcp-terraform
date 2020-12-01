# tfsec:ignore:GCP002
resource "google_storage_bucket" "billing" {
  name     = "reireias-gcp-billing"
  location = "ASIA"
}
