class User < ApplicationRecord
    has_secure_password
    has_many :user_opps
    has_many :opps, through: :user_opps
end
