# Terraform for GCP

## initialize
create bucket

```bash
gsutil mb gs://reireias-terraform/
```

init

```bash
terraform init
```

apply

```bash
terraform apply
```

update environment

```bash
gcloud functions deploy aws-billing-copy --update-env-vars="AWS_ACCESS_KEY_ID=xxxxx,AWS_SECRET_ACCESS_KEY=xxxxx"
```
