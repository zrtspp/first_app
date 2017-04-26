require 'test_helper'

class TopisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topi = topis(:one)
  end

  test "should get index" do
    get topis_url
    assert_response :success
  end

  test "should get new" do
    get new_topi_url
    assert_response :success
  end

  test "should create topi" do
    assert_difference('Topi.count') do
      post topis_url, params: { topi: { description: @topi.description, title: @topi.title } }
    end

    assert_redirected_to topi_url(Topi.last)
  end

  test "should show topi" do
    get topi_url(@topi)
    assert_response :success
  end

  test "should get edit" do
    get edit_topi_url(@topi)
    assert_response :success
  end

  test "should update topi" do
    patch topi_url(@topi), params: { topi: { description: @topi.description, title: @topi.title } }
    assert_redirected_to topi_url(@topi)
  end

  test "should destroy topi" do
    assert_difference('Topi.count', -1) do
      delete topi_url(@topi)
    end

    assert_redirected_to topis_url
  end
end
