require 'test_helper'

class WorryTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test 'Untitled title for nil title' do
    worry = Worry.create(user: @user)
    assert worry
    assert_equal(worry.title, 'Untitled')
  end
end
