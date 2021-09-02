require "test_helper"

class RegisteredstudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registeredstudent = registeredstudents(:one)
  end

  test "should get index" do
    get registeredstudents_url
    assert_response :success
  end

  test "should get new" do
    get new_registeredstudent_url
    assert_response :success
  end

  test "should create registeredstudent" do
    assert_difference('Registeredstudent.count') do
      post registeredstudents_url, params: { registeredstudent: { book_availed: @registeredstudent.book_availed, branch: @registeredstudent.branch, contact: @registeredstudent.contact, exceeded_duration: @registeredstudent.exceeded_duration, first_name: @registeredstudent.first_name, last: @registeredstudent.last, name: @registeredstudent.name } }
    end

    assert_redirected_to registeredstudent_url(Registeredstudent.last)
  end

  test "should show registeredstudent" do
    get registeredstudent_url(@registeredstudent)
    assert_response :success
  end

  test "should get edit" do
    get edit_registeredstudent_url(@registeredstudent)
    assert_response :success
  end

  test "should update registeredstudent" do
    patch registeredstudent_url(@registeredstudent), params: { registeredstudent: { book_availed: @registeredstudent.book_availed, branch: @registeredstudent.branch, contact: @registeredstudent.contact, exceeded_duration: @registeredstudent.exceeded_duration, first_name: @registeredstudent.first_name, last: @registeredstudent.last, name: @registeredstudent.name } }
    assert_redirected_to registeredstudent_url(@registeredstudent)
  end

  test "should destroy registeredstudent" do
    assert_difference('Registeredstudent.count', -1) do
      delete registeredstudent_url(@registeredstudent)
    end

    assert_redirected_to registeredstudents_url
  end
end
