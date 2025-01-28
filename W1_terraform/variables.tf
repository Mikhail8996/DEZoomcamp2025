variable "credentials" {
  description = "My Credentials"
  default     = "../terraform-gcp-key.json"
}


variable "project" {
  description = "Project"
  default     = "de-zoomcamp-2025-449310"
}

variable "region" {
  description = "Region"
  default     = "EUROPE-NORTH1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "tf_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "terraform-demo-terra-bucket-mikes"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}