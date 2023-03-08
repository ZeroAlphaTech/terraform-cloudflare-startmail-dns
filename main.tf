resource "cloudflare_record" "txt_verification" {
  name    = var.domain_name
  value   = var.verification_string
  type    = "TXT"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "mx_1" {
  count = (var.include_mx_records ? 1 : 0)

  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "mx1.startmail.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "mx_2" {
  count = (var.include_mx_records ? 1 : 0)

  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "mx2.startmail.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "txt_spf" {
  count = (var.enable_spf ? 1 : 0)

  name    = var.domain_name
  value   = "v=spf1 include:spf.startmail.com ~all"
  type    = "TXT"
  zone_id = var.cloudflare_zone_id
}

