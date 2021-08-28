# frozen_string_literal: true

# Active record base class
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
