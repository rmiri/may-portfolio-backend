class User < ApplicationRecord
    has_secure_password
    has_one :page
    has_one :about_me
    has_many :projects
    has_one_attached :picture

    validates :email, uniqueness: { case_sensitive: false }
end
