variable "env" {
  description = "Nom de l'environnement (dev ou prod)"
  type        = string
}
variable "data_fusion_instance_type" {
  description = "type de l'instance Data Fusion"
  default = "BASIC"
}

variable "data_fusion_service_account" {
  description = "compte de service lié à l'instance Data Fusion"
  type       = string
}
