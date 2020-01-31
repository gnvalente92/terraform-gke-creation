variable "project_name" {
  description = "GCP project name to be used for creation."
  default     = ""
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
  default     = ""
}

variable "initial_node_count" {
  description = "Initial node count per zone"
  default     = 3
}

variable "issue_client_certificate" {
  description = "Issues a client certificate to authenticate to the cluster endpoint. To maximize the security of your cluster, leave this option disabled. Client certificates don't automatically rotate and aren't easily revocable. WARNING: changing this after cluster creation is destructive!"
  default     = false
}

variable "oauth_scopes" {
  description = "List of service scopes in order to access the Cloud APIs"
  default = [
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
  ]
}

variable "disable_legacy_endpoints" {
  description = "The metadata key/value pairs assigned to instances in the cluster. From GKE 1.12 onwards, disable-legacy-endpoints is set to true by the API; if metadata is set but that default value is not included, Terraform will attempt to unset the value. To avoid this, set the value in your config."
  default     = true
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