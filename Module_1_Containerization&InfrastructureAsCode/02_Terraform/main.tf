terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.17.0"
    }
  }
}

provider "google" {
  credentials = var.credentials_file
  project     = var.project
  region      = var.region
}

# Google Cloud Storage Bucket
resource "google_storage_bucket" "data-lake-bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  
  # Optional, but recommended settings:
  storage_class = var.storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_age  // days
    }
  }

  force_destroy = true
}

# Google BigQuery Dataset
resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.bq_dataset_id
  location   = var.bq_dataset_location
}