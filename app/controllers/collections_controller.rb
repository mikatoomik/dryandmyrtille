class CollectionsController < ApplicationController
  def index
   @collections = Collection.all
  #  @collections = ShopifyAPI::CustomCollection.all
  end
   def show
    @collections = Collection.all
    chosen_collection = Collection.find(params[:id])
    @collection = ShopifyAPI::CustomCollection.find(:all, :params => {:title => "#{chosen_collection.name}"}).first
    @products = ShopifyAPI::Product.find(:all, :params => {:collection_id => @collection.id})
   # products = RestClient.get("https://#{ENV['SHOPIFY_API_KEY']}:#{ENV['SHOPIFY_PASSWORD']}@dryandmyrtille.myshopify.com/admin/api/2020-01/products.json")
   # render json: products
  end
end

