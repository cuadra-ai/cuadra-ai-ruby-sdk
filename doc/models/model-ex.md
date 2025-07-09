
# Model Ex

*This model accepts additional fields of type Object.*

## Structure

`ModelEx`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Model Id |
| `name` | `String` | Required | Model name |
| `type` | `String` | Required | Model type of content generation and processing |
| `description` | `String` | Required | Brief description of the model |
| `proprietary` | `TrueClass \| FalseClass` | Optional | Indicates whether is a custom model created by you or not |
| `base_model` | `String` | Optional | Base model name, if it was created from another model |
| `base_model_id` | `String` | Optional | Base model id, if it was created from another model |
| `created_at` | `DateTime` | Optional | Creation date |
| `updated_at` | `DateTime` | Optional | Last time it was updated |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "id": "72dfb4f5-27dc-40e2-9278-b0de30e8b131",
  "name": "ive.legal.1.1.0",
  "type": "multimedia",
  "description": "Oura-Legal is our next-generation AI model designed for powerful, intelligent, and adaptable legal purposes.",
  "proprietary": false,
  "baseModel": "ive.legal.1.1.0",
  "baseModelId": "baseModelId8",
  "createdAt": "2016-03-13T12:52:32.123Z",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

