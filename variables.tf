variable "domain_name" {
  description = "Domain name to add DNS entries for"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone to add DNS entries to"
  type        = string
}

variable "verification_string" {
  description = "The string provided by StartMail to verify domain ownership. Should include any prefix (e.g. startmail-verification=...)"
  type = string
}

variable "include_mx_records" {
  description = "Whether to include MX records - select false if you do not wish to cause conflict with existing mailserver records while signing up for StartMail"
  type = bool
  default = true
}

variable "enable_spf" {
  description = "Whether to include SPF DNS entry"
  type = bool
  default = true
}
