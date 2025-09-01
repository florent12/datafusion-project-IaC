variable "env" {
  description = "Nom de l'environnement (dev ou prod)"
  type        = string
}
variable "data_fusion_instance_type" {
  description = "type de l'instance Data Fusion"
  default = "BASIC"
}
