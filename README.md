# Terraform Cloudflare iCloud Module

This module configures DNS records in Cloudflare specifically for iCloud Mail.

## Features

- Configures MX, TXT, and CNAME records required for iCloud Mail.
- Allows customization of the domain name and `apple-domain` TXT record value.

## Important Notes

1. **First-Time Setup**: Using this module for the first time can be challenging because Apple insists on creating DNS records automatically via their interface.
   - Accept Apple's automatic configuration.
   - Once the records are created in Cloudflare, manually delete them.
   - Extract the `apple-domain` key from the TXT record that Apple generates. This key is required as input for this module.

2. **Mail Configuration Only**: This module is limited to setting up DNS records for iCloud Mail. It does not support other iCloud-related services.

## Usage

```hcl
module "icloud_mail" {
  source         = "lexfrei/icloud/cloudflare"
  version        = "1.0.0"

  zone_id        = "your-cloudflare-zone-id"
  name           = "example.com"
  apple_domain   = "example-apple-domain-key"
}
```

## Inputs

| Name            | Description                            | Type     | Required |
|-----------------|----------------------------------------|----------|----------|
| `zone_id`       | The Cloudflare Zone ID                | `string` | yes      |
| `name`          | The domain name for which records are created | `string` | yes      |
| `apple_domain`  | Value for the apple-domain TXT record  | `string` | yes      |

## Outputs

| Name                       | Description                                    |
|----------------------------|------------------------------------------------|
| `mx_record_01_id`          | The ID of the first MX record                 |
| `mx_record_02_id`          | The ID of the second MX record                |
| `signin_record_id`         | The ID of the CNAME record for DKIM           |
| `spf_txt_record_id`        | The ID of the TXT record for SPF              |
| `apple_domain_txt_record_id` | The ID of the TXT record for apple-domain verification |

## License

BSD 2-Clause License. See [LICENSE](LICENSE) for details.
