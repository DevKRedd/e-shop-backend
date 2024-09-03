require 'net/http'
require 'json'
require 'uri'

class FakeStoreApiService
  BASE_URL = 'https://api.escuelajs.co/api/v1'.freeze

  def self.fetch_products
    url = URI("#{BASE_URL}/products")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  end

  def self.fetch_categories
    url = URI("#{BASE_URL}/categories")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  end
end
