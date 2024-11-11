terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "~>4.0"
    }

  }
}

provider "azurerm" {
  features {
  }

  # Configuration options
  }

resource "random_string" "random" {
  length  = 4
  special = false
  #override_special = "/@£$"
  upper = false
  lower = true
}
