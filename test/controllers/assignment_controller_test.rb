require 'test_helper'

class AssignmentControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get assignment_name_url
    assert_response :success
  end

  test "should get completed:boolean" do
    get assignment_completed:boolean_url
    assert_response :success
  end

  test "should get question:text" do
    get assignment_question:text_url
    assert_response :success
  end

  test "should get subject_id:integer" do
    get assignment_subject_id:integer_url
    assert_response :success
  end

  test "should get subject:belongs_to" do
    get assignment_subject:belongs_to_url
    assert_response :success
  end

end
