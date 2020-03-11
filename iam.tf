resource "google_service_account" "billing_bucket" {
  account_id   = "billing-bucket"
  display_name = "billing-bucket"
}

resource "google_project_iam_binding" "billing_bucket" {
  project = data.google_project.project.project_id
  role    = "roles/storage.objectViewer"
  members  = [
    "serviceAccount:${google_service_account.billing_bucket.email}",
  ]
}
