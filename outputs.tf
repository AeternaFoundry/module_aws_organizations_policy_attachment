output "organizations_policy_attachments_id" {
  description = "Map of id values across all organizations_policy_attachments, keyed the same as var.organizations_policy_attachments"
  value       = { for k, v in aws_organizations_policy_attachment.organizations_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_policy_attachments_policy_id" {
  description = "Map of policy_id values across all organizations_policy_attachments, keyed the same as var.organizations_policy_attachments"
  value       = { for k, v in aws_organizations_policy_attachment.organizations_policy_attachments : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "organizations_policy_attachments_skip_destroy" {
  description = "Map of skip_destroy values across all organizations_policy_attachments, keyed the same as var.organizations_policy_attachments"
  value       = { for k, v in aws_organizations_policy_attachment.organizations_policy_attachments : k => v.skip_destroy if v.skip_destroy != null }
}
output "organizations_policy_attachments_target_id" {
  description = "Map of target_id values across all organizations_policy_attachments, keyed the same as var.organizations_policy_attachments"
  value       = { for k, v in aws_organizations_policy_attachment.organizations_policy_attachments : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}

