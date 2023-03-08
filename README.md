# StartMail DNS Entries for CloudFlare

Terraform module that will create the necessary DNS entries in an existing [CloudFlare](https://cloudflare.com) account to enable [StartMail](https://startmail.com) to work on a custom domain.

## Pre-requisites

1. A domain configured to use CloudFlare as it's DNS Provider
2. Started the process of signing up for a 'Custom Domain' account with StartMail

## Variables

| Name                | Description                                                                                                                              |
|---------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| cloudflare_zone_id  | Zone ID on CloudFlare for domain                                                                                                         |
| domain_name         | Domain name to configure                                                                                                                 |
| verification_string | The string provided by SimpleLogin when setting up a custom domain (usually in the format `startmail-verification=-...`)                 |
| include_mx_records  | Whether to include MX records - use if you do not wish to cause conflict with existing mailserver records while signing up for StartMail |
| enable_spf          | Whether to add SimpleLogin-specific DNS record for SPF support                                                                           |