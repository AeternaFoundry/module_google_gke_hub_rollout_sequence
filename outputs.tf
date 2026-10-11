output "gke_hub_rollout_sequences_id" {
  description = "Map of id values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no id are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gke_hub_rollout_sequences_auto_upgrade_config" {
  description = "Map of auto_upgrade_config values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no auto_upgrade_config are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => one(v.auto_upgrade_config) if v.auto_upgrade_config != null && length(v.auto_upgrade_config) > 0 }
}
output "gke_hub_rollout_sequences_create_time" {
  description = "Map of create_time values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no create_time are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "gke_hub_rollout_sequences_delete_time" {
  description = "Map of delete_time values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no delete_time are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "gke_hub_rollout_sequences_deletion_policy" {
  description = "Map of deletion_policy values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no deletion_policy are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "gke_hub_rollout_sequences_display_name" {
  description = "Map of display_name values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no display_name are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "gke_hub_rollout_sequences_effective_labels" {
  description = "Map of effective_labels values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no effective_labels are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "gke_hub_rollout_sequences_etag" {
  description = "Map of etag values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no etag are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "gke_hub_rollout_sequences_ignored_clusters_selector" {
  description = "Map of ignored_clusters_selector values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no ignored_clusters_selector are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => one(v.ignored_clusters_selector) if v.ignored_clusters_selector != null && length(v.ignored_clusters_selector) > 0 }
}
output "gke_hub_rollout_sequences_labels" {
  description = "Map of labels values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no labels are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "gke_hub_rollout_sequences_min_control_plane_version" {
  description = "Map of min_control_plane_version values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no min_control_plane_version are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.min_control_plane_version if v.min_control_plane_version != null && length(v.min_control_plane_version) > 0 }
}
output "gke_hub_rollout_sequences_min_node_version" {
  description = "Map of min_node_version values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no min_node_version are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.min_node_version if v.min_node_version != null && length(v.min_node_version) > 0 }
}
output "gke_hub_rollout_sequences_name" {
  description = "Map of name values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no name are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gke_hub_rollout_sequences_operational_state" {
  description = "Map of operational_state values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no operational_state are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.operational_state if v.operational_state != null && length(v.operational_state) > 0 }
}
output "gke_hub_rollout_sequences_project" {
  description = "Map of project values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no project are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.project if v.project != null && length(v.project) > 0 }
}
output "gke_hub_rollout_sequences_rollout_sequence_id" {
  description = "Map of rollout_sequence_id values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no rollout_sequence_id are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.rollout_sequence_id if v.rollout_sequence_id != null && length(v.rollout_sequence_id) > 0 }
}
output "gke_hub_rollout_sequences_stages" {
  description = "Map of stages values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no stages are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.stages if v.stages != null && length(v.stages) > 0 }
}
output "gke_hub_rollout_sequences_target_control_plane_version" {
  description = "Map of target_control_plane_version values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no target_control_plane_version are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.target_control_plane_version if v.target_control_plane_version != null && length(v.target_control_plane_version) > 0 }
}
output "gke_hub_rollout_sequences_target_node_version" {
  description = "Map of target_node_version values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no target_node_version are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.target_node_version if v.target_node_version != null && length(v.target_node_version) > 0 }
}
output "gke_hub_rollout_sequences_terraform_labels" {
  description = "Map of terraform_labels values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no terraform_labels are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "gke_hub_rollout_sequences_uid" {
  description = "Map of uid values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no uid are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "gke_hub_rollout_sequences_update_time" {
  description = "Map of update_time values across all gke_hub_rollout_sequences, keyed the same as var.gke_hub_rollout_sequences except keys with no update_time are omitted"
  value       = { for k, v in google_gke_hub_rollout_sequence.gke_hub_rollout_sequences : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

