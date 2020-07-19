---
page_title: "Twilio Programmable Chat Channel Webhook (Trigger)"
subcategory: "Programmable Chat"
---

# twilio_chat_channel_trigger_webhook Resource

Manages a Chat Channel Webhook

## Example Usage

```hcl
resource "twilio_chat_service" "service" {
  friendly_name = "twilio-test"
}

resource "twilio_chat_channel" "channel" {
  service_sid   = twilio_chat_service.service.sid
  friendly_name = "twilio-test-channel"
}

resource "twilio_chat_channel_trigger_webhook" "trigger_webhook" {
  service_sid = twilio_chat_service.service.sid
  channel_sid = twilio_chat_channel.channel.sid
  webhook_url = "http://localhost/new"
  triggers    = ["keyword"]
}
```

## Argument Reference

The following arguments are supported:

- `service_sid` - (Mandatory) The Service SID associated with the channel webhook. Changing this forces a new resource to be created
- `channel_sid` - (Mandatory) The Channel SID associated with the channel webhook. Changing this forces a new resource to be created
- `method` - (Optional) The HTTP method to trigger the webhook. Valid values are `POST` or `GET`
- `webhook_url` - (Mandatory) The webhook url
- `triggers` - (Mandatory) The keywords which trigger the webhook
- `retry_count` - (Optional)  The number of attempt to retry a failed webhook call

## Attributes Reference

The following attributes are exported:

- `id` - The ID of the channel webhook (Same as the SID)
- `sid` - The SID of the channel webhook (Same as the ID)
- `account_sid` - The Account SID associated with the channel webhook
- `service_sid` - The Service SID associated with the channel webhook
- `channel_sid` - The Channel SID associated with the channel webhook
- `type` - The type of webhook. The value will be trigger
- `method` - The HTTP method to trigger the webhook
- `webhook_url` - The webhook url
- `triggers` - The keywords which trigger the webhook
- `retry_count` - The number of attempt to retry a failed webhook call
- `date_created` - The date in RFC3339 format that the channel webhook was created
- `date_updated` - The date in RFC3339 format that the channel webhook was updated
- `url` - The url of the channel webhook