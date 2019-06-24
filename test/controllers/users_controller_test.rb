require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:doctor)
  end

  test "should get index" do
    get admin_users_url
    assert_response :success
  end
end
