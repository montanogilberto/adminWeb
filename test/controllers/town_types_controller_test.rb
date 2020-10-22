require 'test_helper'

class TownTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @town_type = town_types(:one)
  end

  test "should get index" do
    get town_types_url
    assert_response :success
  end

  test "should get new" do
    get new_town_type_url
    assert_response :success
  end

  test "should create town_type" do
    assert_difference('TownType.count') do
      post town_types_url, params: { town_type: { codigo: @town_type.codigo, tipoAsentamiento: @town_type.tipoAsentamiento } }
    end

    assert_redirected_to town_type_url(TownType.last)
  end

  test "should show town_type" do
    get town_type_url(@town_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_town_type_url(@town_type)
    assert_response :success
  end

  test "should update town_type" do
    patch town_type_url(@town_type), params: { town_type: { codigo: @town_type.codigo, tipoAsentamiento: @town_type.tipoAsentamiento } }
    assert_redirected_to town_type_url(@town_type)
  end

  test "should destroy town_type" do
    assert_difference('TownType.count', -1) do
      delete town_type_url(@town_type)
    end

    assert_redirected_to town_types_url
  end
end
