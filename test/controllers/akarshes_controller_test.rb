require "test_helper"

class AkarshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @akarsh = akarshes(:one)
  end

  test "should get index" do
    get akarshes_url
    assert_response :success
  end

  test "should get new" do
    get new_akarsh_url
    assert_response :success
  end

  test "should create akarsh" do
    assert_difference('Akarsh.count') do
      post akarshes_url, params: { akarsh: { description: @akarsh.description, title: @akarsh.title } }
    end

    assert_redirected_to akarsh_url(Akarsh.last)
  end

  test "should show akarsh" do
    get akarsh_url(@akarsh)
    assert_response :success
  end

  test "should get edit" do
    get edit_akarsh_url(@akarsh)
    assert_response :success
  end

  test "should update akarsh" do
    patch akarsh_url(@akarsh), params: { akarsh: { description: @akarsh.description, title: @akarsh.title } }
    assert_redirected_to akarsh_url(@akarsh)
  end

  test "should destroy akarsh" do
    assert_difference('Akarsh.count', -1) do
      delete akarsh_url(@akarsh)
    end

    assert_redirected_to akarshes_url
  end
end
