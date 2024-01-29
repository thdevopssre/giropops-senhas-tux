variable "project" {
  description = ""
}

variable "region" {
  description = ""
}

variable "cluster_name" {
  description = ""
  type        = string
}

variable "cluster_location" {
  description = ""
  type        = string
}

variable "remove_default_node_pool" {
  description = ""
  type        = bool
}

variable "deletion_protection" {
  description = ""
  type        = bool
}

variable "initial_node_count" {
  description = ""
  type        = number
}

variable "node_locations" {
  description = ""
  type        = list(string)
}

variable "http_load_balancing_disabled" {
  description = ""
  type        = bool
}

variable "horizontal_pod_autoscaling_disabled" {
  description = ""
  type        = bool
}

variable "release_channel" {
  description = ""
  type        = string
}

variable "node_pool_name" {
  description = ""
  type        = string
}

variable "node_pool_location" {
  description = ""
  type        = string
}

variable "node_pool_cluster" {
  description = ""
  type        = string
}

variable "node_pool_node_count" {
  description = ""
  type        = number
}

variable "node_pool_auto_repair" {
  description = ""
  type        = bool
}

variable "node_pool_auto_upgrade" {
  description = ""
  type        = bool
}

variable "node_pool_preemptible" {
  description = ""
  type        = bool
}

variable "node_pool_machine_type" {
  description = ""
  type        = string
}

variable "node_pool_labels" {
  description = ""
  type        = map(string)
}
