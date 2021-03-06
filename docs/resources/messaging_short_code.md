---
page_title: "Twilio Programmable Messaging Short Code"
subcategory: "Programmable Messaging"
---

# twilio_messaging_short_code Resource

Manages a Programmable Messaging short code resource. See the [API docs](https://www.twilio.com/docs/sms/services/api/shortcode-resource) for more information

For more information on Programmable Messaging, see the product [page](https://www.twilio.com/messaging)

!> This API used to manage this resource is currently in beta and is subject to change

## Example Usage

```hcl
resource "twilio_messaging_service" "service" {
  friendly_name = "twilio-test"
}

resource "twilio_messaging_short_code" "short_code" {
  service_sid = twilio_messaging_service.service.sid
  sid         = "SCXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}
```

## Argument Reference

The following arguments are supported:

- `service_sid` - (Mandatory) The messaging service SID to associate the short code with. Changing this forces a new resource to be created
- `sid` - (Mandatory) The SID of the Twilio short code to associate with the messaging service. Changing this forces a new resource to be created

## Attributes Reference

The following attributes are exported:

- `id` - The ID of the short code (Same as the SID)
- `sid` - The SID of the Twilio short code associated with the messaging service (Same as the ID)
- `service_sid` - The messaging service SID associated with the short code
- `account_sid` - The account SID associated with the short code
- `capabilities` - The capabilities that are enabled for the short code
- `country_code` - The country code of the short code
- `short_code` - The short code
- `date_created` - The date in RFC3339 format that the messaging short code resource was created
- `date_updated` - The date in RFC3339 format that the messaging short code resource was updated
- `url` - The URL of the messaging short code resource

## Timeouts

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/docs/configuration/resources.html#timeouts) for certain actions:

- `create` - (Defaults to 10 minutes) Used when creating the short code
- `read` - (Defaults to 5 minutes) Used when retrieving the short code
- `delete` - (Defaults to 10 minutes) Used when deleting the short code

## Import

A short code can be imported using the `/Services/{serviceSid}/ShortCodes/{sid}` format, e.g.

```shell
terraform import twilio_messaging_short_code.short_code /Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/ShortCodes/SCXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```
