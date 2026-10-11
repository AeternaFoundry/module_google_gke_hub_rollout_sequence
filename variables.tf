variable "gke_hub_rollout_sequences" {
  description = <<EOT
Map of gke_hub_rollout_sequences, attributes below
Required:
    - rollout_sequence_id
    - stages (block):
        - cluster_selector (optional, block):
            - label_selector (required)
        - fleet_projects (required)
        - soak_duration (optional)
Optional:
    - deletion_policy
    - display_name
    - labels
    - min_control_plane_version
    - min_node_version
    - project
    - auto_upgrade_config (block):
        - rollout_creation_scope (optional, block):
            - upgrade_types (optional)
    - ignored_clusters_selector (block):
        - label_selector (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    rollout_sequence_id       = string
    deletion_policy           = optional(string)
    display_name              = optional(string)
    labels                    = optional(map(string))
    min_control_plane_version = optional(string)
    min_node_version          = optional(string)
    project                   = optional(string)
    stages = list(object({
      cluster_selector = optional(object({
        label_selector = string
      }))
      fleet_projects = list(string)
      soak_duration  = optional(string)
    }))
    auto_upgrade_config = optional(object({
      rollout_creation_scope = optional(object({
        upgrade_types = optional(set(string))
      }))
    }))
    ignored_clusters_selector = optional(object({
      label_selector = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.gke_hub_rollout_sequences : (
        length(v.stages) >= 1
      )
    ])
    error_message = "Each stages list must contain at least 1 items"
  }
}

