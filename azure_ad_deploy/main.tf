provider "azurerm" {
  features = {}
}

data "azuread_client_config" "current" {}

resource "azuread_group" "adgrp" {
  display_name     = "example"
  owners           = ["639187ae-2398-48a7-bd84-e8e361391650"]
  security_enabled = true  
}
