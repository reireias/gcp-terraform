resource "google_pubsub_topic" "aws_billing_sync" {
  name = "billing_sync_trigger"
}
