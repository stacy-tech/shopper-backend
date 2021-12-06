class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :product, :username

  def username
    self.object.user.username
  end

 

end
