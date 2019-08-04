[![Build Status](https://travis-ci.org/reireias/gcp-terraform.svg?branch=master)](https://travis-ci.org/reireias/gcp-terraform)
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
