require 'test_helper'

class EducatorsControllerTest < ActionController::TestCase
  test "should get edit_email" do
    get :edit_email
    assert_response :success
  end

  test "should get edit_password" do
    get :edit_password
    assert_response :success
  end

end
