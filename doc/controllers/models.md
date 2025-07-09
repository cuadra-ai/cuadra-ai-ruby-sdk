# Models

Create your own custom model, train it and use it!

```ruby
models_controller = client.models
```

## Class Name

`ModelsController`

## Methods

* [Get Models](../../doc/controllers/models.md#get-models)
* [Create Model](../../doc/controllers/models.md#create-model)
* [Get Model](../../doc/controllers/models.md#get-model)
* [Remove Model](../../doc/controllers/models.md#remove-model)
* [Update Model](../../doc/controllers/models.md#update-model)


# Get Models

This endpoint display all of our AI models.

```ruby
def get_models(page: nil,
               size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | - |
| `size` | `Integer` | Query, Optional | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`PaginatedResponseExListModelEx`](../../doc/models/paginated-response-ex-list-model-ex.md).

## Example Usage

```ruby
result = models_controller.get_models

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


# Create Model

This endpoint creates a new custom Model for you to train and use.

```ruby
def create_model(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ModelEx`](../../doc/models/model-ex.md) | Body, Required | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ModelEx`](../../doc/models/model-ex.md).

## Example Usage

```ruby
body = ModelEx.new(
  name: 'ive.legal.1.1.0',
  type: 'multimedia',
  description: 'Oura-Legal is our next-generation AI model designed for powerful, intelligent, and adaptable legal purposes.',
  id: '72dfb4f5-27dc-40e2-9278-b0de30e8b131',
  proprietary: false,
  base_model: 'ive.legal.1.1.0'
)

result = models_controller.create_model(body)

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


# Get Model

This endpoint shows you information about a particular model given an id.

```ruby
def get_model(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ModelEx`](../../doc/models/model-ex.md).

## Example Usage

```ruby
id = 'id0'

result = models_controller.get_model(id)

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


# Remove Model

This endpoint removes a custom model you created.

```ruby
def remove_model(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ModelEx`](../../doc/models/model-ex.md).

## Example Usage

```ruby
id = 'id0'

result = models_controller.remove_model(id)

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


# Update Model

This endpoint updates a custom model you created.

```ruby
def update_model(id,
                 body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `body` | [`ModelEx`](../../doc/models/model-ex.md) | Body, Required | - |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ModelEx`](../../doc/models/model-ex.md).

## Example Usage

```ruby
id = 'id0'

body = ModelEx.new(
  name: 'ive.legal.1.1.0',
  type: 'multimedia',
  description: 'Oura-Legal is our next-generation AI model designed for powerful, intelligent, and adaptable legal purposes.',
  id: '72dfb4f5-27dc-40e2-9278-b0de30e8b131',
  proprietary: false,
  base_model: 'ive.legal.1.1.0'
)

result = models_controller.update_model(
  id,
  body
)

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

