# terraform-gke-creation


## Getting started
This guide follows under the assumption that `terraform` is correctly installed in the machine being used (for that, follow [Terraform installation page](https://learn.hashicorp.com/terraform/getting-started/install.html)).

### Get a `GCP` service account file

Follow the steps in the page [GCP service account creation](https://console.cloud.google.com/apis/credentials/serviceaccountkey) to obtain a `GCP` service account `json` file. Place it somewhere in the machine being used and change the variable `account_file_path` in `./creation/gke/container_cluster/variables.tf` to reflect it.

## Creating a `Kubernetes` cluster in `GCP`

### Create a credentials file for the Kubernetes master

Create a `.tf` file in `./creation/gke/container_cluster/` with the following structure:

```terraform
variable "master_auth_user" {
  description = "Username for Kubernetes master"
  default     = "<USER_NAME>"
}

variable "master_auth_password" {
  description = "Password for Kubernetes master"
  default     = "<PASSWORD>"
}
```

Choose adequate values for the parameters `<USER_NAME>` and `<PASSWORD>`, where the password must have at least 16 characters.

### Choose parameters for the cluster creation
Do the necessary changes to the file `./creation/gke/container_cluster/variables.tf` to reflect your cluster specifications. Addional parameters can be defined. See `./modules/gke/container_cluster/variables.tf` to see which ones have been specified in this project.

###  Run `terraform`

Run the following commands to provision the cluster:
```sh
cd ./creation/gke/container_cluster/
terraform init # will setup the terraform project and download all needed dependencies
terraform plan # will present a plan of the actions to be performed, review the output before creating the cluster
terraform apply # will apply the plan, creating the k8s cluster
```

## Make changes

This is a simple demonstration on how to setup a `Kubernetes` cluster in GCP, mostly with the default configurations. Many adjustments and configurations can be chosen for a `Kubernetes` cluster running on `GCP`. Check official documentation to make changes: [Terraform GKE cluster management](https://www.terraform.io/docs/providers/google/r/container_cluster.html).