class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    byebug
    shop = Shop.find_by_shopify_domain(test-junggun.myshopify.com)
    shop.with_shopify_session do
      ShopifyAPI::Product.all
    end
  end


  def with_shopify_session(&block)
    ShopifyAPI::Session.temp(shopify_domain, shopify_token, &block)
  end
end
