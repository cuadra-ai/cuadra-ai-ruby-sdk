
# OAuth 2 Authorization Code Grant



Documentation for accessing and setting credentials for OAuth2.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| OAuthClientId | `String` | OAuth 2 Client ID | `oauth_client_id` |
| OAuthClientSecret | `String` | OAuth 2 Client Secret | `oauth_client_secret` |
| OAuthRedirectUri | `String` | OAuth 2 Redirection endpoint or Callback Uri | `oauth_redirect_uri` |
| OAuthToken | `OauthToken` | Object for storing information about the OAuth token | `oauth_token` |



**Note:** Auth credentials can be set using named parameter for any of the above credentials (e.g. `oauth_client_id`) in the client initialization.

## Usage Example

### 1\. Client Initialization

You must initialize the client with *OAuth 2.0 Authorization Code Grant* credentials as shown in the following code snippet.

```ruby
client = CuadraAi::Client.new(
  authorization_code_auth_credentials: AuthorizationCodeAuthCredentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_redirect_uri: 'OAuthRedirectUri'
  )
)
```



Your application must obtain user authorization before it can execute an endpoint call in case this SDK chooses to use *OAuth 2.0 Authorization Code Grant*. This authorization includes the following steps

### 2\. Obtain user consent

To obtain user's consent, you must redirect the user to the authorization page.The `get_authorization_url` method creates the URL to the authorization page.

```ruby
auth_url = client.oauth_2.get_authorization_url
```

### 3\. Handle the OAuth server response

Once the user responds to the consent request, the OAuth 2.0 server responds to your application's access request by redirecting the user to the redirect URI specified set in `Configuration`.

If the user approves the request, the authorization code will be sent as the `code` query string:

```
https://example.com/oauth/callback?code=XXXXXXXXXXXXXXXXXXXXXXXXX
```

If the user does not approve the request, the response contains an `error` query string:

```
https://example.com/oauth/callback?error=access_denied
```

### 4\. Authorize the client using the code

After the server receives the code, it can exchange this for an *access token*. The access token is an object containing information for authorizing client requests and refreshing the token itself.

```ruby
begin
  token = client.oauth_2.fetch_token
  # update the cloned configuration with the token
  authorization_code_auth_credentials = client.config.authorization_code_auth_credentials.clone_with(oauth_token: token)
  config = client.config.clone_with(authorization_code_auth_credentials: authorization_code_auth_credentials)
  # re-instantiate the client with updated configuration
  client = CuadraAi::Client.new(config: config)
rescue OauthProviderException => ex
  # handle exception
rescue ApiException => ex
  # handle exception
end
```

### Refreshing the token

An access token may expire after sometime. To extend its lifetime, you must refresh the token.

```ruby
if client.auth.token_expired?
  begin
    token = client.auth.refresh_token
    # Update the cloned configuration with the token
    authorization_code_auth_credentials = client.config.authorization_code_auth_credentials.clone_with(oauth_token: token)
    config = client.config.clone_with(authorization_code_auth_credentials: authorization_code_auth_credentials)
    # Re-instantiate the client with updated configuration
    client = Client.new(config: config)
  rescue OauthProviderException => ex
    # handle exception
  rescue ApiException => ex
    # handle exception
  end
end
```

If a token expires, an exception will be thrown before the next endpoint call requiring authentication.

### Storing an access token for reuse

It is recommended that you store the access token for reuse.

```ruby
# store token
save_token_to_database(client.config.authorization_code_auth_credentials.oauth_token)
```

### Creating a client from a stored token

To authorize a client using a stored access token, just set the access token in Configuration along with the other configuration parameters before creating the client:

```ruby
# load token later...
token = load_token_from_database

# Update the cloned configuration with the token
  authorization_code_auth_credentials = client.config.authorization_code_auth_credentials.clone_with(oauth_token: token)
config = client.config.clone_with(authorization_code_auth_credentials: authorization_code_auth_credentials)
# Re-instantiate the client with updated configuration
client = Client.new(config: config)
```

### Complete example



```ruby
require 'cuadra_ai'

include CuadraAi

# function for storing token to database
def save_token_to_database(token)
  # code to save the token to database
end

# function for loading token from database
def load_token_from_database
  # load token from database and return it (return nil if no token exists)
end

# create a new client
client = CuadraAi::Client.new

# obtain access token, needed for client to be authorized
previous_token = load_token_from_database
if previous_token
  # restore previous access token and update the cloned configuration with the token
  authorization_code_auth_credentials = client.config.authorization_code_auth_credentials.clone_with(oauth_token: previous_token)
  config = client.config.clone_with(authorization_code_auth_credentials: authorization_code_auth_credentials)
  # re-instantiate the client with updated configuration
  client = CuadraAi::Client.new(config: config)
else
  # redirect user to a page that handles authorization
end
```


