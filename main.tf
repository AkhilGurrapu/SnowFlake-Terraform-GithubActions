# new source
terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.36.0"
    }
  }

  backend "remote" {
    organization = "datasarva"

    workspaces {
      name = "github-actions-datasarva"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
