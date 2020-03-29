require 'shopify_api'

shop_url = "https://#{ENV['SHOPIFY_API_KEY']}:#{ENV['SHOPIFY_PASSWORD']}@#{ENV['SHOPIFY_SHOP_NAME']}.myshopify.com"
ShopifyAPI::Base.site = shop_url
ShopifyAPI::Base.api_version = "#{ENV['SHOPIFY_VERSION_API']}"
