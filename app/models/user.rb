class User < ApplicationRecord
    has_secure_password
    has_many :transactions
    has_many :products, through: :transactions

    validates :username, presence: true
end
