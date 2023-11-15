provider "azurerm" {
  features = {}
}

resource "azuread_group" "adgrp" {
  name = "test-group"
  description = "Test Azure AD Group"
}
