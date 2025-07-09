# Embeds

Feed your custom models with relevant information.

```ruby
embeds_controller = client.embeds
```

## Class Name

`EmbedsController`


# Embed

This endpoint creates a new embed for training your custom AI Models.

```ruby
def embed(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Embed`](../../doc/models/embed.md) | Body, Required | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`EmbedResponseEx`](../../doc/models/embed-response-ex.md).

## Example Usage

```ruby
body = Embed.new(
  model: 'ive.legal.1.1.0',
  content: [
    ContentEx.new(
      text: 'Guide me on creating a legal document for x.'
    )
  ],
  purpose: 'classification'
)

result = embeds_controller.embed(body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request, read again our documentation or contact support for guidance. | [`ErrorResponseException`](../../doc/models/error-response-exception.md) |
| 401 | Not authorized, check our OAuth2 doc. | [`ErrorResponseException`](../../doc/models/error-response-exception.md) |
| 500 | Internal error, if this error persist, please contact support. | [`ErrorResponseException`](../../doc/models/error-response-exception.md) |

