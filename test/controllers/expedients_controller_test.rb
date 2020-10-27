require 'test_helper'

class ExpedientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expedient = expedients(:one)
  end

  test "should get index" do
    get expedients_url
    assert_response :success
  end

  test "should get new" do
    get new_expedient_url
    assert_response :success
  end

  test "should create expedient" do
    assert_difference('Expedient.count') do
      post expedients_url, params: { expedient: { act_id: @expedient.act_id, active: @expedient.active, actor: @expedient.actor, court_id: @expedient.court_id, customer_id: @expedient.customer_id, defendant: @expedient.defendant, district_id: @expedient.district_id, fee: @expedient.fee, judgment_id: @expedient.judgment_id, matter_id: @expedient.matter_id, noExpedient: @expedient.noExpedient, payment: @expedient.payment, saldo: @expedient.saldo, year: @expedient.year } }
    end

    assert_redirected_to expedient_url(Expedient.last)
  end

  test "should show expedient" do
    get expedient_url(@expedient)
    assert_response :success
  end

  test "should get edit" do
    get edit_expedient_url(@expedient)
    assert_response :success
  end

  test "should update expedient" do
    patch expedient_url(@expedient), params: { expedient: { act_id: @expedient.act_id, active: @expedient.active, actor: @expedient.actor, court_id: @expedient.court_id, customer_id: @expedient.customer_id, defendant: @expedient.defendant, district_id: @expedient.district_id, fee: @expedient.fee, judgment_id: @expedient.judgment_id, matter_id: @expedient.matter_id, noExpedient: @expedient.noExpedient, payment: @expedient.payment, saldo: @expedient.saldo, year: @expedient.year } }
    assert_redirected_to expedient_url(@expedient)
  end

  test "should destroy expedient" do
    assert_difference('Expedient.count', -1) do
      delete expedient_url(@expedient)
    end

    assert_redirected_to expedients_url
  end
end
