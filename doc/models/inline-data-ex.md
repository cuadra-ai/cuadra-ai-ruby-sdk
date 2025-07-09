
# Inline Data Ex

Input Reference is the name of the file, if you're request is from a type other than text, and it's required for most types. It has to contain the same name as the file attached in the request.

*This model accepts additional fields of type Object.*

## Structure

`InlineDataEx`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mime_type` | `String` | Optional | - |
| `data` | `String` | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "mimeType": "mimeType0",
  "data": "data8",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

