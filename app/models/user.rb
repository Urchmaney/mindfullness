class User < ApplicationRecord
  has_secure_password
  
  validates :full_name, :email, presence: true
  validates :email, uniqueness: true

  has_many :sessions
end
