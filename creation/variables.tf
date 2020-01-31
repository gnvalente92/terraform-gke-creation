variable "account_file_path" {
  description = "Service account json file path."
  default     = "../credentials/hsbc-gv-sandbox-5602460ab49a.json"
}

variable "project_name" {
  description = "GCP project name to be used for creation."
  default     = "hsbc-gv-sandbox"
}

variable "region" {
  description = "GCP compute region to be used for creation."
  default     = "europe-west1"
}

variable "zone" {
  description = "GCP compute zone to be used for creation."
  default     = "europe-west1-b"
}
variable "cluster_name" {
  description = "GKE cluster name for creation."
  default     = "simple-k8s-cluster"
}