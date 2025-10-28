variable "dataset_id" {
    description = "nom du dataset à créer"
    type        = string
  
}

variable "table_id" {
    description = "id de la table à créer" # (une seule dans ce projet)
    type        = string
  
}

variable "location" {
  description = "Emplacement géographique du dataset"
  type        = string
  default = "EU"
}