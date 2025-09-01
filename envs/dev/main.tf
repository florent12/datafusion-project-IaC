terraform {
  required_version = ">= 1.5.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
 
}

# Appel du module composer
module "composer_env" {
  source      = "../../modules/composer" 
  project_id  = var.project_id
  #region      = var.region
  env         = var.env
 # env_name    = "composer-${var.env}"      #
}

#Appel du module Data Fusion
module "df_instance" {
  source                    = "../../modules/datafusion"
  #region                    = var.region
  env                       = var.env
  data_fusion_instance_type = var.data_fusion_instance_type
}

module "bigquery" {
  source     = "../../modules/bigquery"
  dataset_id = var.dataset_id
  table_id   = var.table_id
}