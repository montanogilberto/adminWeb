require 'test_helper'

class TownshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @township = townships(:one)
  end

  test "should get index" do
    get townships_url
    assert_response :success
  end

  test "should get new" do
    get new_township_url
    assert_response :success
  end

  test "should create township" do
    assert_difference('Township.count') do
      post townships_url, params: { township: { codigo: @township.codigo, municipio: @township.municipio, state_id: @township.state_id } }
    end

    assert_redirected_to township_url(Township.last)
  end

  test "should show township" do
    get township_url(@township)
    assert_response :success
  end

  test "should get edit" do
    get edit_township_url(@township)
    assert_response :success
  end

  test "should update township" do
    patch township_url(@township), params: { township: { codigo: @township.codigo, municipio: @township.municipio, state_id: @township.state_id } }
    assert_redirected_to township_url(@township)
  end

  test "should destroy township" do
    assert_difference('Township.count', -1) do
      delete township_url(@township)
    end

    assert_redirected_to townships_url
  end
end
