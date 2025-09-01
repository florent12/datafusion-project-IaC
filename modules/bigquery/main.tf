resource "google_bigquery_dataset" "bq_instance" {
  dataset_id                 = var.dataset_id
  delete_contents_on_destroy = true
}

resource "google_bigquery_table" "bq_table" {
  dataset_id = google_bigquery_dataset.bq_instance.dataset_id
  table_id   = var.table_id
}
