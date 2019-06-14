resource "google_bigquery_dataset" "billing" {
  dataset_id    = "billing"
  friendly_name = "billing"
  description   = "billing dataset"
  location      = "US"
}

resource "google_bigquery_table" "billing" {
  dataset_id = "${google_bigquery_dataset.billing.dataset_id}"
  table_id   = "billing"
}
