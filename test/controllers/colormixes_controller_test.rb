require 'test_helper'

class ColormixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colormix = colormixes(:one)
  end

  test "should get index" do
    get colormixes_url
    assert_response :success
  end

  test "should get new" do
    get new_colormix_url
    assert_response :success
  end

  test "should create colormix" do
    assert_difference('Colormix.count') do
      post colormixes_url, params: { colormix: { blue: @colormix.blue, finalcolor: @colormix.finalcolor, gree: @colormix.gree, red: @colormix.red } }
    end

    assert_redirected_to colormix_url(Colormix.last)
  end

  test "should show colormix" do
    get colormix_url(@colormix)
    assert_response :success
  end

  test "should get edit" do
    get edit_colormix_url(@colormix)
    assert_response :success
  end

  test "should update colormix" do
    patch colormix_url(@colormix), params: { colormix: { blue: @colormix.blue, finalcolor: @colormix.finalcolor, gree: @colormix.gree, red: @colormix.red } }
    assert_redirected_to colormix_url(@colormix)
  end

  test "should destroy colormix" do
    assert_difference('Colormix.count', -1) do
      delete colormix_url(@colormix)
    end

    assert_redirected_to colormixes_url
  end
end
