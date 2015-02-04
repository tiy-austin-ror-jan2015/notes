require 'test_helper'

class TeamControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get employee_of_the_month" do
    get :employee_of_the_month
    assert_response :success
  end

end
