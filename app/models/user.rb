class User < ApplicationRecord
    has_secure_password
    has_many :pages
    has_many :projects
    has_one_attached :picture

    validates :email, uniqueness: { case_sensitive: false }
end
