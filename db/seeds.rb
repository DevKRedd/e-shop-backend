# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create categories
home = Category.create(name: 'Others', image: 'https://placeimg.com/640/480/any?r=0.591926261873231')

# Create products
Product.create(
  title: 'Handmade Fresh Table',
  price: 687,
  description: 'Andy shoes are designed to keeping in...',
  category: home,
  images: [
    'https://placeimg.com/640/480/any?r=0.9178516507833767',
    'https://placeimg.com/640/480/any?r=0.9300320592588625',
    'https://placeimg.com/640/480/any?r=0.8807778235430017'
  ]
)
