require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.sidebar-nav .nav-list a', minimum: 3
    assert_select '.content .entry', 3
    assert_select 'h3','Programming Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end
end