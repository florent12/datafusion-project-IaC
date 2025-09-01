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

variable "data_fusion_instance_type" {
  description = "type de l'instance Data Fusion"
  default = "BASIC"
}

variable "dataset_id" {
  description = "id du dataset à créer"
  type        = string
}

variable "table_id" {
  description = "table à créer"
  type = string
}