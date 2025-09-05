resource "google_data_fusion_instance" "df_instance" {
  name                          = "datafusion-${var.env}"
  type                          = var.data_fusion_instance_type
  dataproc_service_account      = var.data_fusion_service_account

}



