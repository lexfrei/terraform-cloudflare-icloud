variable "zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}

variable "name" {
  description = "Subdomain name for Adobe Portfolio"
  type        = string
}

variable "apple_domain" {
  description = "The value for the apple-domain TXT record, used for verifying domain ownership with Apple services."
  type        = string
}

variable "ttl" {
  description = "Time to live for DNS records in seconds (default: auto)"
  type        = number
  default     = 1
}
