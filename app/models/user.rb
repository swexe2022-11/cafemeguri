class User < ApplicationRecord
    validates :uid, uniqueness: true
    validates :password, presence: true, confirmation: true
    
    attr_accessor :password, :password_confirmation
end
