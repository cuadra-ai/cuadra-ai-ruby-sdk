
# Total Usage Ex

*This model accepts additional fields of type Object.*

## Structure

`TotalUsageEx`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_input` | `Integer` | Optional | Total Input Tokens used for this month |
| `total_output` | `Integer` | Optional | Total Ouput Tokens used for this month |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "totalInput": 12492,
  "totalOutput": 24381,
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

