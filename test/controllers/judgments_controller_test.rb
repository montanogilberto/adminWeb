require 'test_helper'

class JudgmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @judgment = judgments(:one)
  end

  test "should get index" do
    get judgments_url
    assert_response :success
  end

  test "should get new" do
    get new_judgment_url
    assert_response :success
  end

  test "should create judgment" do
    assert_difference('Judgment.count') do
      post judgments_url, params: { judgment: { name: @judgment.name } }
    end

    assert_redirected_to judgment_url(Judgment.last)
  end

  test "should show judgment" do
    get judgment_url(@judgment)
    assert_response :success
  end

  test "should get edit" do
    get edit_judgment_url(@judgment)
    assert_response :success
  end

  test "should update judgment" do
    patch judgment_url(@judgment), params: { judgment: { name: @judgment.name } }
    assert_redirected_to judgment_url(@judgment)
  end

  test "should destroy judgment" do
    assert_difference('Judgment.count', -1) do
      delete judgment_url(@judgment)
    end

    assert_redirected_to judgments_url
  end
end
