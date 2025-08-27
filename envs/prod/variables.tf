variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région GCP"
  type        = string
  default     = "europe-west1"
}

variable "env" {
  description = "Nom de l'environnement (dev ou prod)"
  type        = string
}
