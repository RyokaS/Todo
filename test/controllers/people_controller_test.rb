require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get people_show_url
    assert_response :success
  end

  test "should get add" do
    get people_add_url
    assert_response :success
  end

  test "should get edit" do
    get people_edit_url
    assert_response :success
  end

end
