variable "region" {
  description = "GCP compute region to be used for creation."
  default     = "europe-west1"
}

variable "zone" {
  description = "GCP compute zone to be used for creation."
  default     = "europe-west1-b"
}

variable "account_file_path" {
  description = "Service account json file path."
  default     = "../../../credentials/hsbc-gv-sandbox-5602460ab49a.json"
}

variable "project_name" {
  description = "GCP project name to be used for creation."
  default     = "hsbc-gv-sandbox"
}

variable "cluster_name" {
  description = "GKE cluster name for creation."
  default     = "simple-k8s-cluster"
}

variable "labels" {
  description = "Labels to be applied to the node labels"
  default     = {
    foo = "bar"
  }
}

variable "tags" {
  description = "The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls."
  default     = ["foo", "bar"]
}