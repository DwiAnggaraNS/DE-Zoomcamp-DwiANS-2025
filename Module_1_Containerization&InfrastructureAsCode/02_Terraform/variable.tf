# General variables
variable "project" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Region for GCP resources"
  type        = string
  default     = "asia-southeast2"
}

variable "credentials_file" {
  description = "Path to the service account credentials JSON file"
  type        = string
}

# GCS variables
variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket"
  type        = string
}

variable "storage_class" {
  description = "Storage class type for your bucket"
  type        = string
  default     = "STANDARD"
}

variable "bucket_location" {
  description = "Location of the bucket"
  type        = string
  default     = "asia-southeast2"
}

variable "lifecycle_age" {
  description = "Number of days before object deletion"
  type        = number
  default     = 30
}

# BigQuery variables
variable "bq_dataset_id" {
  description = "BigQuery Dataset ID"
  type        = string
}

variable "bq_dataset_location" {
  description = "BigQuery Dataset Location"
  type        = string
  default     = "asia-southeast2"
}