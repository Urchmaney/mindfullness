class Worry < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  before_validation :set_nil_title

  private

  def set_nil_title
    self.title = 'Untitled' if title.nil?
  end
end
