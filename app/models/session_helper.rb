class SessionHelper < ApplicationRecord
  has_secure_password
  before_create :create_user_caller_id

  def create_user_caller_id
    self.caller_id = SecureRandom.uuid
  end
end
