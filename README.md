# terraform-gke-creation
Official documentation [Terraform GKE cluster management](https://www.terraform.io/docs/providers/google/r/container_cluster.html)

## Getting started


### Get a `GCP` service account file


## Creating a `Kubernetes` cluster in `GCP`

### Create a credentials file for the Kubernetes master
```terraform
variable "master_auth_user" {
  description = "Username for Kubernetes master"
  default     = "<USER_NAME>"
}

variable "master_auth_password" {
  description = "Password for Kubernetes master"
  default     = "<PASSWORD"
}
```
* Password must have at least 16 characters