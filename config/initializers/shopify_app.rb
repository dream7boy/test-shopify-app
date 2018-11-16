ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "3a37ef78168dca5fcc176e6bca7217ea"
  config.secret = "7fd7a9fae80f2d21e5aa74c10bc6c717"
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
