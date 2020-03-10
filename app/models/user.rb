class User < ApplicationRecord
    has_secure_password
    has_many :styles
    
    validates :email, uniqueness: { case_sensitive: false }
end
