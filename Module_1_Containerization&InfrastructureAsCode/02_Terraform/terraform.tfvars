# General configuration
project          = "de-zoomcamp-2025-454709"
region           = "asia-southeast2"
credentials_file = "D:\\DE-Zoomcamp-Practice\\DE-Zoomcamp-DwiANS-2025\\Module_1_Containerization&InfrastructureAsCode\\02_Terraform\\Keys\\my-creds.json"

# GCS configuration
bucket_name      = "dwians-de-zoomcamp-data-lake"
storage_class    = "STANDARD"
bucket_location  = "asia-southeast2"
lifecycle_age    = 30

# BigQuery configuration
bq_dataset_id       = "de_zoomcamp_dataset"
bq_dataset_location = "asia-southeast2"