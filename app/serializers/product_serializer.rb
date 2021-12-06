class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :description, :price
  has_many :transactions
end
