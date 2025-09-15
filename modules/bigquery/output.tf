output "dataset_id" {
  value = google_bigquery_dataset.bq_instance.dataset_id
}

output "events_table_id" {
  value = google_bigquery_table.bq_table.table_id
}
