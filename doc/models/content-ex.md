
# Content Ex

Request content

*This model accepts additional fields of type Object.*

## Structure

`ContentEx`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `text` | `String` | Required | Text is the task you want the AI to solve. |
| `inline_data` | [`InlineDataEx`](../../doc/models/inline-data-ex.md) | Optional | Input Reference is the name of the file, if you're request is from a type other than text, and it's required for most types. It has to contain the same name as the file attached in the request. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "text": "Guide me on creating a legal document for x.",
  "inlineData": {
    "mimeType": "mimeType8",
    "data": "data6",
    "exampleAdditionalProperty": {
      "key1": "val1",
      "key2": "val2"
    }
  },
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

