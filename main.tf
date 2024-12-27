terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.49.1"
    }
  }
}

resource "cloudflare_record" "icloud_mx01" {
  zone_id  = var.zone_id
  name     = var.name
  content  = "mx01.mail.icloud.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "icloud_mx02" {
  zone_id  = var.zone_id
  name     = var.zone_id
  content  = "mx02.mail.icloud.com"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "icloud_signin" {
  zone_id = var.zone_id
  name    = "sig1._domainkey"
  content = "sig1.dkim.${var.name}.at.icloudmailadmin.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "icloud_txt01" {
  zone_id = var.zone_id
  name    = var.zone_id
  content = "v=spf1 include:icloud.com ~all"
  type    = "TXT"
}

resource "cloudflare_record" "icloud_txt02" {
  zone_id = var.zone_id
  name    = var.zone_id
  content = "apple-domain=${var.apple_domain}"
  type    = "TXT"
}
