# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @new_user = User.new(full_name: 'Mathew Perty', email: 'Mat@mind.com')
  end

  # test "should get index" do
  #   get users_url, as: :json
  #   assert_response :success
  # end

  test 'should create user' do
    assert_difference('User.count') do
      post users_url, params: { user: { email: @new_user.email, full_name: @new_user.full_name } }, as: :json
    end

    assert_response 201
  end

  test 'should show user' do
    get user_url(@user), as: :json
    assert_response :success
  end

  # test "should update user" do
  #   patch user_url(@user), params: { user: { email: @user.email, full_name: @user.full_name } }, as: :json
  #   assert_response 200
  # end

  # test "should destroy user" do
  #   assert_difference('User.count', -1) do
  #     delete user_url(@user), as: :json
  #   end

  #   assert_response 204
  # end
end
