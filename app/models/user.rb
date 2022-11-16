class User < ApplicationRecord
    validates :uid, uniqueness: true
    validates :password, presence: true, confirmation: true
end
