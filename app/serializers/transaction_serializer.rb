class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :product
  has_one :user
  has_one :product
end
