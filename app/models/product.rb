class Product < ApplicationRecord
  belongs_to :category
  # Serialize `images` attribute if you're using a different database
  # ActiveRecord automatically handles arrays for PostgreSQL
  serialize :images, Array unless ActiveRecord::Base.connection.adapter_name.downcase.include?('postgres')
end
