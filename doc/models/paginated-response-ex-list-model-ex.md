
# Paginated Response Ex List Model Ex

*This model accepts additional fields of type Object.*

## Structure

`PaginatedResponseExListModelEx`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Optional | - |
| `size` | `Integer` | Optional | - |
| `data` | [`Array<ModelEx>`](../../doc/models/model-ex.md) | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "page": 180,
  "size": 168,
  "data": [
    {
      "id": "id0",
      "name": "name0",
      "type": "type0",
      "description": "description0",
      "proprietary": false,
      "baseModel": "baseModel8",
      "baseModelId": "baseModelId4",
      "createdAt": "2016-03-13T12:52:32.123Z",
      "exampleAdditionalProperty": {
        "key1": "val1",
        "key2": "val2"
      }
    },
    {
      "id": "id0",
      "name": "name0",
      "type": "type0",
      "description": "description0",
      "proprietary": false,
      "baseModel": "baseModel8",
      "baseModelId": "baseModelId4",
      "createdAt": "2016-03-13T12:52:32.123Z",
      "exampleAdditionalProperty": {
        "key1": "val1",
        "key2": "val2"
      }
    }
  ],
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

