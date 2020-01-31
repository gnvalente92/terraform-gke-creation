resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  location           = "${var.zone}"
  initial_node_count = "${var.initial_node_count}"

  master_auth {
    username = "${var.master_auth_user}"
    password = "${var.master_auth_password}"
    
    client_certificate_config {
      issue_client_certificate = "${var.issue_client_certificate}"
    }
  }

  node_config {
    oauth_scopes = "${var.oauth_scopes}"

    metadata = {
      disable-legacy-endpoints = "${var.disable_legacy_endpoints}"
    }

    labels = "${var.labels}"

    tags = "${var.tags}"
  }
}
