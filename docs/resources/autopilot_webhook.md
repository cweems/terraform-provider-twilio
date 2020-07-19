---
page_title: "Twilio Autopilot Webhook"
subcategory: "Autopilot"
---

# twilio_autopilot_webhook Resource

Manages a Autopilot Webhook

## Example Usage

```hcl
resource "twilio_autopilot_assistant" "assistant" {
  friendly_name = "twilio-test"
}

resource "twilio_autopilot_webhook" "webhook" {
  assistant_sid = twilio_autopilot_assistant.assistant.sid
  unique_name   = "twilio-test-webhook"
  webhook_url   = "http://localhost/webhook"
  events = [
    "onDialogueEnd"
  ]
}
```

## Argument Reference

The following arguments are supported:

- `assistant_sid` - (Mandatory) The SID of the assistant to attach the webhook to
- `unique_name` - (Mandatory) The unique name of the webhook
- `webhook_url` - (Mandatory) The webhook url
- `events` - (Mandatory) A list of webhook events strings which trigger the webhook
- `webhook_method` - (Optional) The HTTP method to trigger the webhook. Valid values are `POST` or `GET`

## Attributes Reference

The following attributes are exported:

- `id` - The ID of the webhook (Same as the SID)
- `sid` - The SID of the webhook (Same as the ID)
- `account_sid` - The Account SID associated with the webhook
- `assistant_sid` - The SID of the assistant to attach the webhook to
- `unique_name` - The unique name of the webhook
- `webhook_url` - The webhook url
- `events` - A list of webhook events strings which trigger the webhook
- `webhook_method` - The HTTP method to trigger the webhook
- `date_created` - The date in RFC3339 format that the webhook was created
- `date_updated` - The date in RFC3339 format that the webhook was updated
- `url` - The url of the webhook resource