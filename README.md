
# Getting Started with Cuadra AI

## Introduction

API Documentation

## Install the Package

Install the gem from the command line:

```bash
gem install cuadra-ai-sdk -v 1.0.4
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'cuadra-ai-sdk', '1.0.4'
```

For additional gem details, see the [RubyGems page for the cuadra-ai-sdk gem](https://rubygems.org/gems/cuadra-ai-sdk/versions/1.0.4).

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| environment | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 30** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| logging_configuration | [`LoggingConfiguration`](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/logging-configuration.md) | The SDK logging configuration for API calls |
| authorization_code_auth_credentials | [`AuthorizationCodeAuthCredentials`](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/auth/oauth-2-authorization-code-grant.md) | The credential object for OAuth 2 Authorization Code Grant |

The API client can be initialized as follows:

```ruby
client = CuadraAi::Client.new(
  authorization_code_auth_credentials: AuthorizationCodeAuthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_redirect_uri: 'OAuthRedirectUri'
  ),
  environment: Environment::PRODUCTION,
  logging_configuration: LoggingConfiguration.new(
    log_level: Logger::INFO,
    request_logging_config: RequestLoggingConfiguration.new(
      log_body: true
    ),
    response_logging_config: ResponseLoggingConfiguration.new(
      log_headers: true
    )
  )
)
```

## Authorization

This API uses the following authentication schemes.

* [`OAuth2 (OAuth 2 Authorization Code Grant)`](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/auth/oauth-2-authorization-code-grant.md)

## List of APIs

* [Chat](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/controllers/chat.md)
* [Models](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/controllers/models.md)
* [Embeds](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/controllers/embeds.md)
* [Usage](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/controllers/usage.md)

## SDK Infrastructure

### Configuration

* [AbstractLogger](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/abstract-logger.md)
* [LoggingConfiguration](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/logging-configuration.md)
* [RequestLoggingConfiguration](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/response-logging-configuration.md)

### HTTP

* [HttpResponse](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/http-response.md)
* [HttpRequest](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/http-request.md)

### Utilities

* [ApiResponse](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/api-response.md)
* [ApiHelper](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/cuadra-ai/cuadra-ai-ruby-sdk/tree/1.0.4/doc/date-time-helper.md)

