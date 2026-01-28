#naming + tags + conventions
locals {
  org         = "kaaratech"
  project     = "devops"
  environment = var.environment
  region      = "eastus"

  name_prefix = "${local.org}-${local.project}-${local.environment}"

  # Storage account rules:
  # - lowercase
  # - no hyphens
  # - <= 24 chars
  storage_account_name = substr(
    lower(replace("${local.org}${local.project}${local.environment}sa", "-", "")),
    0,
    24
  )

  common_tags = {
    project     = local.project
    environment = local.environment
    owner       = "Learning-DevOps"
    managed_by  = "terraform"
  }
}
