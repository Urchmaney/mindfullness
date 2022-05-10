require 'faker'

class User < ApplicationRecord
  has_secure_password
  before_save :assign_fullname
  before_create :create_user_caller_id

  has_many :sessions

  private

  def assign_fullname
    return unless full_name.blank?

    self.full_name = Faker::Name.name
  end

  def create_user_caller_id
    self.caller_id = SecureRandom.uuid
  end
end
