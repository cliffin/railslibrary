require "test_helper"

class StudentsregisteredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentsregistered = studentsregistereds(:one)
  end

  test "should get index" do
    get studentsregistereds_url
    assert_response :success
  end

  test "should get new" do
    get new_studentsregistered_url
    assert_response :success
  end

  test "should create studentsregistered" do
    assert_difference('Studentsregistered.count') do
      post studentsregistereds_url, params: { studentsregistered: { book_availed: @studentsregistered.book_availed, branch: @studentsregistered.branch, contact: @studentsregistered.contact, exceeded_duration: @studentsregistered.exceeded_duration, first_name: @studentsregistered.first_name, last_name: @studentsregistered.last_name } }
    end

    assert_redirected_to studentsregistered_url(Studentsregistered.last)
  end

  test "should show studentsregistered" do
    get studentsregistered_url(@studentsregistered)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentsregistered_url(@studentsregistered)
    assert_response :success
  end

  test "should update studentsregistered" do
    patch studentsregistered_url(@studentsregistered), params: { studentsregistered: { book_availed: @studentsregistered.book_availed, branch: @studentsregistered.branch, contact: @studentsregistered.contact, exceeded_duration: @studentsregistered.exceeded_duration, first_name: @studentsregistered.first_name, last_name: @studentsregistered.last_name } }
    assert_redirected_to studentsregistered_url(@studentsregistered)
  end

  test "should destroy studentsregistered" do
    assert_difference('Studentsregistered.count', -1) do
      delete studentsregistered_url(@studentsregistered)
    end

    assert_redirected_to studentsregistereds_url
  end
end
