require 'faker'

class User < ApplicationRecord
  has_secure_password
  before_save :assign_fullname

  has_many :sessions

  private

  def assign_fullname
    return unless full_name.blank?

    self.full_name = Faker::Name.name
  end
end
