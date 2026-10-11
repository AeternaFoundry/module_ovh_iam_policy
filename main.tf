resource "ovh_iam_policy" "iam_policies" {
  for_each = var.iam_policies

  identities         = each.value.identities
  name               = each.value.name
  resources          = each.value.resources
  allow              = each.value.allow
  deny               = each.value.deny
  description        = each.value.description
  except             = each.value.except
  expired_at         = each.value.expired_at
  permissions_groups = each.value.permissions_groups

  dynamic "conditions" {
    for_each = each.value.conditions != null ? [each.value.conditions] : []
    content {
      dynamic "condition" {
        for_each = conditions.value.condition != null ? conditions.value.condition : []
        content {
          dynamic "condition" {
            for_each = condition.value.condition != null ? condition.value.condition : []
            content {
              operator = condition.value.operator
              values   = condition.value.values
            }
          }
          operator = condition.value.operator
          values   = condition.value.values
        }
      }
      operator = conditions.value.operator
      values   = conditions.value.values
    }
  }
}

