---
page_title: "Twilio Sub Account"
subcategory: "Account"
---

# twilio_account_sub_account Resource

Manages a Twilio Sub Account

## Example Usage

```hcl
resource "twilio_account_sub_account" "sub_account" {
  friendly_name = "twilio-test"
}
```

## Argument Reference

The following arguments are supported:

- `friendly_name` - (Mandatory) The friendly name of the account
- `status` - (Optional) The status of the account

## Attributes Reference

The following attributes are exported:

- `id` - The ID of the account (Same as the SID)
- `sid` - The SID of the account (Same as the ID)
- `friendly_name` - The friendly name of the account
- `status` - The status of the account
- `owner_account_sid` - The SID of the parent/ owner account
- `type` - The type of account
- `auth_token` - The auth token for the account
- `date_created` - The date in RFC3339 format that the account was created
- `date_updated` - The date in RFC3339 format that the account was updated