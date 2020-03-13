class User < ApplicationRecord
    has_secure_password
    has_many :pages
    has_many :projects
    
    validates :email, uniqueness: { case_sensitive: false }
end
