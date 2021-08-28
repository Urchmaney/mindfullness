require 'test_helper'

class WorriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worry = worries(:one)
    @user = users(:one)
  end

  test 'should get index' do
    get user_worries_url(@user), as: :json
    assert_response :success
  end

  test 'should create worry' do
    assert_difference('Worry.count') do
      post user_worries_url(@user),
           params: {
             worry: { description: @worry.description, recording_url: @worry.recording_url, user_id: 1 }
           },
           as: :json
    end

    assert_response 201
  end

  test 'should show worry' do
    get user_worry_url(@user, @worry), as: :json
    assert_response :success
  end

  test 'should update worry' do
    patch user_worry_url(@user, @worry),
          params: { worry: { description: @worry.description, recording_url: @worry.recording_url } }, as: :json
    assert_response 200
  end

  test 'should destroy worry' do
    assert_difference('Worry.count', -1) do
      delete user_worry_url(@user, @worry), as: :json
    end

    assert_response 204
  end
end
