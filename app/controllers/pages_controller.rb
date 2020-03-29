class PagesController < ApplicationController
  def home
    shop = ShopifyAPI::Shop.current
    @name = shop.name
    @products = ShopifyAPI::Product.all
  end
end
