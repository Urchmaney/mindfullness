class User < ApplicationRecord
  validates :full_name, :email, presence: true
  validates :email, uniqueness: true
end
