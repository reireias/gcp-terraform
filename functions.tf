resource "google_cloudfunctions_function" "s3copy" {
  name                = "aws-billing-copy"
  description         = "Copy AWS billing data from S3 to GCS."
  runtime             = "nodejs10"
  available_memory_mb = 128
  entry_point         = "main"

  event_trigger {
    event_type = "providers/cloud.pubsub/eventTypes/topic.publish"
    resource   = "${google_pubsub_topic.aws_billing_sync.name}"
  }

  source_repository {
    url = "https://source.developers.google.com/projects/${data.google_client_config.current.project}/repos/github_reireias_aws-billing-copy-functions/moveable-aliases/master/paths/"
  }
}
