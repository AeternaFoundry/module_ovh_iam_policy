variable "iam_policies" {
  description = <<EOT
Map of iam_policies, attributes below
Required:
    - identities
    - name
    - resources
Optional:
    - allow
    - deny
    - description
    - except
    - expired_at
    - permissions_groups
    - conditions (block):
        - condition (optional, block):
            - condition (optional, block):
                - operator (required)
                - values (optional)
            - operator (required)
            - values (optional)
        - operator (required)
        - values (optional)
EOT

  type = map(object({
    identities         = set(string)
    name               = string
    resources          = set(string)
    allow              = optional(set(string))
    deny               = optional(set(string))
    description        = optional(string)
    except             = optional(set(string))
    expired_at         = optional(string)
    permissions_groups = optional(set(string))
    conditions = optional(object({
      condition = optional(list(object({
        condition = optional(list(object({
          operator = string
          values   = optional(map(string))
        })))
        operator = string
        values   = optional(map(string))
      })))
      operator = string
      values   = optional(map(string))
    }))
  }))
}

