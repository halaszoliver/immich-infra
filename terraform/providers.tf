terraform {
  required_version = ">= 1.12.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "/etc/rancher/k3s/k3s.yaml"
  config_context = "default"
}

