variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}

data "google_storage_transfer_project_service_account" "default" { }

resource "google_storage_bucket" "aws_billing" {
  name = "reireias-aws-billing"
}

resource "google_storage_bucket_iam_member" "aws_billing" {
  bucket = "${google_storage_bucket.aws_billing.name}"
  role   = "roles/storage.admin"
  member = "serviceAccount:${data.google_storage_transfer_project_service_account.default.email}"

  depends_on = [
    "google_storage_bucket.aws_billing"
  ]
}

resource "google_storage_transfer_job" "s3-transfer-job" {
  description = "Transfer billing data from S3 to Storage."

  transfer_spec {
    object_conditions {
      include_prefixes = [
        "billing/billing/"
      ]
    }

    transfer_options {
      overwrite_objects_already_existing_in_sink = true
    }

    aws_s3_data_source {
      bucket_name = "reireias-billing"
      aws_access_key {
        access_key_id     = "${var.aws_access_key_id}"
        secret_access_key = "${var.aws_secret_access_key}"
      }
    }

    gcs_data_sink {
      bucket_name = "${google_storage_bucket.aws_billing.name}"
    }
  }

  schedule {
    schedule_start_date {
      year  = 2019
      month = 1
      day   = 1
    }

    schedule_end_date {
        year  = 2050
        month = 1
        day   = 1
    }
  }

  depends_on = [
    "google_storage_bucket_iam_member.aws_billing"
  ]
}
