class PagesController < ApplicationController
  def home

  end
  def product
    shop = ShopifyAPI::Shop.current
    @name = shop.name
    @products = ShopifyAPI::Product.all
  end
end
