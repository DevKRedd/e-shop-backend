require 'net/http'
require 'json'
require 'uri'

class FakeStoreApiService
  BASE_URL = 'https://fakestoreapi.in/api'.freeze

  def self.fetch_products
    url = URI("#{BASE_URL}/products")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  end

  def self.fetch_categories
    url = URI("#{BASE_URL}/products/category")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  end
end

