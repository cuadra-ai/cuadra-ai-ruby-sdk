
# Error Response Exception

Standard error response format for Cuadra AI

*This model accepts additional fields of type Object.*

## Structure

`ErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `message` | `String` | Optional | A message describing the error |
| `status` | `Integer` | Optional | HTTP status code |
| `field_errors` | `Hash[String, String]` | Optional | Optional: Field-specific validation errors |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "message": "Incorrect request",
  "status": 400,
  "field_errors": {
    "model": "model cannot be null",
    "user_id": "must not be blank"
  },
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

