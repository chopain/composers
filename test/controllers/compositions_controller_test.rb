require 'test_helper'

class CompositionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get compositions_show_url
    assert_response :success
  end

end
