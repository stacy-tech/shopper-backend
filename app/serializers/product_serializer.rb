class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :description, :price
end
