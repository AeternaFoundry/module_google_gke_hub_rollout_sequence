resource "google_gke_hub_rollout_sequence" "gke_hub_rollout_sequences" {
  for_each = var.gke_hub_rollout_sequences

  rollout_sequence_id       = each.value.rollout_sequence_id
  deletion_policy           = each.value.deletion_policy
  display_name              = each.value.display_name
  labels                    = each.value.labels
  min_control_plane_version = each.value.min_control_plane_version
  min_node_version          = each.value.min_node_version
  project                   = each.value.project

  dynamic "stages" {
    for_each = each.value.stages
    content {
      dynamic "cluster_selector" {
        for_each = stages.value.cluster_selector != null ? [stages.value.cluster_selector] : []
        content {
          label_selector = cluster_selector.value.label_selector
        }
      }
      fleet_projects = stages.value.fleet_projects
      soak_duration  = stages.value.soak_duration
    }
  }

  dynamic "auto_upgrade_config" {
    for_each = each.value.auto_upgrade_config != null ? [each.value.auto_upgrade_config] : []
    content {
      dynamic "rollout_creation_scope" {
        for_each = auto_upgrade_config.value.rollout_creation_scope != null ? [auto_upgrade_config.value.rollout_creation_scope] : []
        content {
          upgrade_types = rollout_creation_scope.value.upgrade_types
        }
      }
    }
  }

  dynamic "ignored_clusters_selector" {
    for_each = each.value.ignored_clusters_selector != null ? [each.value.ignored_clusters_selector] : []
    content {
      label_selector = ignored_clusters_selector.value.label_selector
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

