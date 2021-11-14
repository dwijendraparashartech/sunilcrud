require "test_helper"

class SunilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sunil_index_url
    assert_response :success
  end

  test "should get show" do
    get sunil_show_url
    assert_response :success
  end

  test "should get edit" do
    get sunil_edit_url
    assert_response :success
  end

  test "should get new" do
    get sunil_new_url
    assert_response :success
  end
end
