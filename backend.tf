terraform {
  backend "gcs" {
    bucket      = "reireias-terraform"
    prefix      = "terraform/state"
    credentials = ".credentials/terraform.json"
  }
}
