class SessionQuestion < ApplicationRecord
  belongs_to :session
  belongs_to :question
end
