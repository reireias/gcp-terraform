[![Actions Status](https://github.com/reireias/gcp-terraform/workflows/fmt/badge.svg)](https://github.com/reireias/gcp-terraform/actions) [![Actions Status](https://github.com/reireias/gcp-terraform/workflows/tfsec/badge.svg)](https://github.com/reireias/gcp-terraform/actions)
# Terraform for GCP

## initialize
create bucket

```bash
gsutil mb gs://reireias-terraform/
```

make aws access key file

```bash
vi secret.auto.tfvars
# add this settings
aws_access_key_id="xxxx"
aws_secret_access_key="xxxx"
```

init

```bash
terraform init
```

apply

```bash
terraform apply
```
