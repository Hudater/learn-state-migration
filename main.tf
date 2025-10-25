# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

## Terraform configuration

terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "homelab_hudater"
    workspaces {
      name = "learn-terraform-migrate"
    }
  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
  required_version = ">= 1.1.0"
}

variable "name_length" {
  description = "The number of words in the pet name"
  default     = "3"
}

resource "random_pet" "pet_name" {
  length    = var.name_length
  separator = "-"
}

resource "random_pet" "pet_name_2" {
  length    = var.name_length
  separator = "_"
}

resource "random_pet" "pet_name_3" {
  length    = var.name_length
  separator = "_"
}

resource "random_pet" "pet_name_4" {
  length    = var.name_length
  separator = "_"
}

resource "random_pet" "pet_name_5" {
  length    = var.name_length
  separator = "_"
}



output "pet_name" {
  value = random_pet.pet_name.id
}
