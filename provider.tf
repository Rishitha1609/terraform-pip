provider "azurerm" {
  features {}

  subscription_id = "a977e9c9-bfdb-4292-a2f7-1fef25d14d60"
  client_id       = "2cc5e811-2c2b-4358-b873-454ccd7d456e"
  client_secret   = "eU38Q~DJvVjEhKhKMEZRRFP2YQxiZQkaopnambzL"
  tenant_id       = "dbdd1483-e4a3-4735-bfbb-a11ca083ded0"
}

terraform {
  backend "azurerm" {
    storage_account_name = "cicdsa"
    container_name       = "container1"
    key                  = "terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "mH9BMhLlpQCLzQSmo809ErvEw9i4Z6mcnBScCW9FznQSzHG19wlKFWhSLXciRIYLOiatw/aAx99h+AStI6sUGQ=="
  }
}