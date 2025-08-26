provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_composer_environment" "composer_env" {
  name   = "composer-${var.env}"   # exemple: composer-dev ou composer-prod
  region = var.region

  config {
    node_count = 1   # nombre de nœuds du cluster GKE sous-jacent

    software_config {
      image_version = "composer-2.6.4-airflow-2.6.3"  # version Composer + Airflow
      python_version = "3"                            # Python 3
      # tu peux installer des dépendances pip
      # pypi_packages = {
      #   "pandas" = "==1.5.3"
      # }
    }

    # config machine des workers
    workloads_config {
      scheduler {
        cpu        = 1
        memory_gb  = 3.75
        storage_gb = 1
      }
      web_server {
        cpu        = 1
        memory_gb  = 2
        storage_gb = 1
      }
      worker {
        cpu        = 2
        memory_gb  = 7.5
        storage_gb = 2
      }
    }

    # réseau (si tu en as déjà un sinon ça utilise le default VPC)
    # node_config {
    #   network    = var.network
    #   subnetwork = var.subnetwork
    #   service_account = var.service_account
    # }
  }
}
