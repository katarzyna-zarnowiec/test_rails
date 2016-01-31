require 'test_helper'

class SecretsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  test "should get secrets index" do
    get :index
    assert_response :success
    assert_select "title", "AMEGAM | Investment Focus"
  end

end
