output "mx_record_01_id" {
  description = "The ID of the first MX record for iCloud Mail"
  value       = cloudflare_record.icloud_mx01.id
}

output "mx_record_02_id" {
  description = "The ID of the second MX record for iCloud Mail"
  value       = cloudflare_record.icloud_mx02.id
}

output "signin_record_id" {
  description = "The ID of the CNAME record for iCloud Mail domain key (signin)"
  value       = cloudflare_record.icloud_signin.id
}

output "spf_txt_record_id" {
  description = "The ID of the TXT record for SPF settings"
  value       = cloudflare_record.icloud_txt01.id
}

output "apple_domain_txt_record_id" {
  description = "The ID of the TXT record for apple-domain verification"
  value       = cloudflare_record.icloud_txt02.id
}
