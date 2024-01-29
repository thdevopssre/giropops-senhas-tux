# terraform.tfvars.cluster
project                             = "nodejs-412602"
region                              = "us-central1"
cluster_name                        = "my-gke-cluster"
cluster_location                    = "us-central1"
remove_default_node_pool            = true
deletion_protection                 = false
initial_node_count                  = 1
node_locations                      = ["us-central1-c"]
http_load_balancing_disabled        = true
horizontal_pod_autoscaling_disabled = false
release_channel                     = "REGULAR"

# terraform.tfvars.node
node_pool_name         = "my-node-pool"
node_pool_location     = "us-central1"
node_pool_cluster      = "my-gke-cluster"
node_pool_node_count   = 1
node_pool_auto_repair  = true
node_pool_auto_upgrade = true
node_pool_preemptible  = true
node_pool_machine_type = "n1-standard-2"

node_pool_labels = {
  foo = "value"
}
