require 'test_helper'

class LessonPaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lesson_payments_index_url
    assert_response :success
  end

  test "should get show" do
    get lesson_payments_show_url
    assert_response :success
  end

  test "should get new" do
    get lesson_payments_new_url
    assert_response :success
  end

  test "should get edit" do
    get lesson_payments_edit_url
    assert_response :success
  end

end
