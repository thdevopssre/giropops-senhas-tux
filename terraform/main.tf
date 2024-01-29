resource "google_container_cluster" "primary" {
  name                     = var.cluster_name
  location                 = var.cluster_location
  remove_default_node_pool = var.remove_default_node_pool
  deletion_protection      = var.deletion_protection
  initial_node_count       = var.initial_node_count

  node_locations = var.node_locations

  addons_config {
    http_load_balancing {
      disabled = var.http_load_balancing_disabled
    }
    horizontal_pod_autoscaling {
      disabled = var.horizontal_pod_autoscaling_disabled
    }
  }

  release_channel {
    channel = var.release_channel
  }
}

resource "google_container_node_pool" "primary_preemtible_node" {
  name       = var.node_pool_name
  location   = var.node_pool_location
  cluster    = var.node_pool_cluster
  node_count = var.node_pool_node_count

  management {
    auto_repair  = var.node_pool_auto_repair
    auto_upgrade = var.node_pool_auto_upgrade
  }

  node_config {
    preemptible  = var.node_pool_preemptible
    machine_type = var.node_pool_machine_type

    labels = var.node_pool_labels
  }
}
