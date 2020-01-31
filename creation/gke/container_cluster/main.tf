provider "google" {
  credentials = "${file(var.account_file_path)}"
  project = "${var.project_name}"
  region  = "${var.region}"
  zone    = "${var.zone}"
}

module "k8s_cluster" {
  source = "../../../modules/gke/container_cluster/"
  cluster_name = "${var.cluster_name}"
  labels = "${var.labels}"
  tags = "${var.tags}"
}
