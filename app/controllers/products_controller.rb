class ProductsController < ApplicationController
    def index
      products = FakeStoreApiService.fetch_products
      render json: products
    end
  
    def categories
      categories = FakeStoreApiService.fetch_categories
      render json: categories
    end
  end
  