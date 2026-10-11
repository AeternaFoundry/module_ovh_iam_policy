output "iam_policies_id" {
  description = "Map of id values across all iam_policies, keyed the same as var.iam_policies except keys with no id are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_policies_allow" {
  description = "Map of allow values across all iam_policies, keyed the same as var.iam_policies except keys with no allow are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.allow if v.allow != null && length(v.allow) > 0 }
}
output "iam_policies_conditions" {
  description = "Map of conditions values across all iam_policies, keyed the same as var.iam_policies except keys with no conditions are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => one(v.conditions) if v.conditions != null && length(v.conditions) > 0 }
}
output "iam_policies_created_at" {
  description = "Map of created_at values across all iam_policies, keyed the same as var.iam_policies except keys with no created_at are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "iam_policies_deny" {
  description = "Map of deny values across all iam_policies, keyed the same as var.iam_policies except keys with no deny are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.deny if v.deny != null && length(v.deny) > 0 }
}
output "iam_policies_description" {
  description = "Map of description values across all iam_policies, keyed the same as var.iam_policies except keys with no description are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iam_policies_except" {
  description = "Map of except values across all iam_policies, keyed the same as var.iam_policies except keys with no except are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.except if v.except != null && length(v.except) > 0 }
}
output "iam_policies_expired_at" {
  description = "Map of expired_at values across all iam_policies, keyed the same as var.iam_policies except keys with no expired_at are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.expired_at if v.expired_at != null && length(v.expired_at) > 0 }
}
output "iam_policies_identities" {
  description = "Map of identities values across all iam_policies, keyed the same as var.iam_policies except keys with no identities are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.identities if v.identities != null && length(v.identities) > 0 }
}
output "iam_policies_name" {
  description = "Map of name values across all iam_policies, keyed the same as var.iam_policies except keys with no name are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_policies_owner" {
  description = "Map of owner values across all iam_policies, keyed the same as var.iam_policies except keys with no owner are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "iam_policies_permissions_groups" {
  description = "Map of permissions_groups values across all iam_policies, keyed the same as var.iam_policies except keys with no permissions_groups are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.permissions_groups if v.permissions_groups != null && length(v.permissions_groups) > 0 }
}
output "iam_policies_read_only" {
  description = "Map of read_only values across all iam_policies, keyed the same as var.iam_policies except keys with no read_only are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.read_only if v.read_only != null }
}
output "iam_policies_resources" {
  description = "Map of resources values across all iam_policies, keyed the same as var.iam_policies except keys with no resources are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "iam_policies_updated_at" {
  description = "Map of updated_at values across all iam_policies, keyed the same as var.iam_policies except keys with no updated_at are omitted"
  value       = { for k, v in ovh_iam_policy.iam_policies : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

