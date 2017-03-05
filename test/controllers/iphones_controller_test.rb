require 'test_helper'

class IphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iphone = iphones(:one)
  end

  test "should get index" do
    get iphones_url
    assert_response :success
  end

  test "should get new" do
    get new_iphone_url
    assert_response :success
  end

  test "should create iphone" do
    assert_difference('Iphone.count') do
      post iphones_url, params: { iphone: { color: @iphone.color, description: @iphone.description, model: @iphone.model, price: @iphone.price, size: @iphone.size, string: @iphone.string, type: @iphone.type } }
    end

    assert_redirected_to iphone_url(Iphone.last)
  end

  test "should show iphone" do
    get iphone_url(@iphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_iphone_url(@iphone)
    assert_response :success
  end

  test "should update iphone" do
    patch iphone_url(@iphone), params: { iphone: { color: @iphone.color, description: @iphone.description, model: @iphone.model, price: @iphone.price, size: @iphone.size, string: @iphone.string, type: @iphone.type } }
    assert_redirected_to iphone_url(@iphone)
  end

  test "should destroy iphone" do
    assert_difference('Iphone.count', -1) do
      delete iphone_url(@iphone)
    end

    assert_redirected_to iphones_url
  end
end
