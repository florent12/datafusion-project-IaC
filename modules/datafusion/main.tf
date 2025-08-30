resource "google_data_fusion_instance" "df_instance" {
  name                          = "datafusion-${var.env}"
  region                        = var.region
  type                          = var.data_fusion_instance_type
  #dataproc_service_account      = data.google_app_engine_default_service_account.default.email

}



