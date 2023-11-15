terraform {  
  required_providers {  
    azuread = {  
      source  = "hashicorp/azuread"  
      version = "~> 2.45.0"  
    }  
  }  
}  

data "azuread_client_config" "current" {}

resource "azuread_group" "adgrp" {
  display_name     = "grp-test-sk-github-action-01"
  security_enabled = true  
}
