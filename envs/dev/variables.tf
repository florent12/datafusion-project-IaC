variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région GCP"
  type        = string
  default     = "europe-west9"
}

variable "env" {
  description = "Nom de l'environnement (dev ou prod)"
  type        = string
}

variable "gcp_credentials" {
  description = "Chemin ou contenu JSON de la clé du service account"
  type        = string
  sensitive   = true
}
