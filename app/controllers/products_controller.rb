class ProductsController < ApplicationController
  def index
    shop = ShopifyAPI::Shop.current
    @name = shop.name
    @products = ShopifyAPI::Product.all
  end
  def show
    @product = ShopifyAPI::Product.find(params[:id])
    @same_collection = ShopifyAPI::CustomCollection.find(:all, :params => {:title => "#{@product.collections.first.title}"}).first
    @products_collection = ShopifyAPI::Product.find(:all, :params => {:collection_id => @same_collection.id})
    @type_collection = ShopifyAPI::SmartCollection.find(:all, :params => {:handle => "#{@product.product_type}s"})
    unless @type_collection.empty?
      @products_type = ShopifyAPI::Product.find(:all, :params => {:collection_id => @type_collection.first.id})
    else
      @products_type = ShopifyAPI::Product.all.sample(5)
    end
  end
end
