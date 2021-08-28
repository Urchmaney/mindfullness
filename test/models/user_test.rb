# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test 'user invalid if email is not present' do
    user = User.new(full_name: 'Micheal')
    valid = user.valid?
    assert_not valid
  end

  test 'user invalid if full_name is not present' do
    user = User.new(email: 'Micheal@gmail')
    valid = user.valid?
    assert_not valid
  end

  test 'user email must be unique' do
    user = User.new(email: 'first_email@mind.com', full_name: 'Sting Name')
    valid = user.valid?
    assert_not valid
  end

  test 'validate valid user' do
    user = User.new(email: 'victor@mind.com', full_name: 'Victor Valdes')
    valid = user.valid?
    assert valid
  end
end
