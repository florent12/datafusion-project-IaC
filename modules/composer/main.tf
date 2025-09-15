# provider "google" {
#   project = var.project_id
#   region  = var.region
# }

resource "google_composer_environment" "composer_env" {
  name   = "composer-${var.env}"   # exemple: composer-dev ou composer-prod

  config {
    #node_count = 3   # nombre de nœuds du cluster GKE sous-jacent

    software_config {
      image_version = "composer-3-airflow-2.10.5"  # version Composer + Airflow
      #python_version = "3"                    
    }

    node_config {
      service_account = "composer-sa@${var.project_id}.iam.gserviceaccount.com"
    }
    

    # config machine des workers
    workloads_config {
      scheduler {
        cpu        = 0.5
        memory_gb  = 2
        storage_gb = 1
        count      = 1
      }
      web_server {
        cpu        = 0.5
        memory_gb  = 2
        storage_gb = 1
      }
      worker {
        cpu = 0.5
        memory_gb  = 2
        storage_gb = 1
        min_count  = 1
        max_count  = 3
      }
      triggerer {
        cpu = 0.5
        memory_gb = 1
        count = 1
      }


    }

    
  }
}
