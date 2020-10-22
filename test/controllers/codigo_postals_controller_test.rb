require 'test_helper'

class CodigoPostalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codigo_postal = codigo_postals(:one)
  end

  test "should get index" do
    get codigo_postals_url
    assert_response :success
  end

  test "should get new" do
    get new_codigo_postal_url
    assert_response :success
  end

  test "should create codigo_postal" do
    assert_difference('CodigoPostal.count') do
      post codigo_postals_url, params: { codigo_postal: { town_id: @codigo_postal.town_id } }
    end

    assert_redirected_to codigo_postal_url(CodigoPostal.last)
  end

  test "should show codigo_postal" do
    get codigo_postal_url(@codigo_postal)
    assert_response :success
  end

  test "should get edit" do
    get edit_codigo_postal_url(@codigo_postal)
    assert_response :success
  end

  test "should update codigo_postal" do
    patch codigo_postal_url(@codigo_postal), params: { codigo_postal: { town_id: @codigo_postal.town_id } }
    assert_redirected_to codigo_postal_url(@codigo_postal)
  end

  test "should destroy codigo_postal" do
    assert_difference('CodigoPostal.count', -1) do
      delete codigo_postal_url(@codigo_postal)
    end

    assert_redirected_to codigo_postals_url
  end
end
