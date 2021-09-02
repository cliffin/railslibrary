require "test_helper"

class BookstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookstatus = bookstatuses(:one)
  end

  test "should get index" do
    get bookstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_bookstatus_url
    assert_response :success
  end

  test "should create bookstatus" do
    assert_difference('Bookstatus.count') do
      post bookstatuses_url, params: { bookstatus: { available: @bookstatus.available, book_name: @bookstatus.book_name } }
    end

    assert_redirected_to bookstatus_url(Bookstatus.last)
  end

  test "should show bookstatus" do
    get bookstatus_url(@bookstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookstatus_url(@bookstatus)
    assert_response :success
  end

  test "should update bookstatus" do
    patch bookstatus_url(@bookstatus), params: { bookstatus: { available: @bookstatus.available, book_name: @bookstatus.book_name } }
    assert_redirected_to bookstatus_url(@bookstatus)
  end

  test "should destroy bookstatus" do
    assert_difference('Bookstatus.count', -1) do
      delete bookstatus_url(@bookstatus)
    end

    assert_redirected_to bookstatuses_url
  end
end
