# Chat

Interact with our different models to get intelligent results

```ruby
chat_controller = client.chat
```

## Class Name

`ChatController`


# Chat

This endpoint creates a new chat interaction with our AI Models.

```ruby
def chat(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Chat`](../../doc/models/chat.md) | Body, Required | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ChatResponseEx`](../../doc/models/chat-response-ex.md).

## Example Usage

```ruby
body = Chat.new(
  model: 'ive.legal.1.1.0',
  content: [
    ContentEx.new(
      text: 'Guide me on creating a legal document for x.'
    )
  ]
)

result = chat_controller.chat(body)

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

