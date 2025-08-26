terraform {
  required_version = ">= 1.5.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  backend "gcs" {
    bucket = "tf-state-dev"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Exemple d'appel au module composer
module "composer_env" {
  source      = "../../modules/composer"   # ton module réutilisable
  project_id  = var.project_id
  region      = var.region
  env         = var.env
  env_name    = "composer-${var.env}"      # pour différencier dev et prod
}
