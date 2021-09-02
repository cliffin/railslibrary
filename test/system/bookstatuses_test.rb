require "application_system_test_case"

class BookstatusesTest < ApplicationSystemTestCase
  setup do
    @bookstatus = bookstatuses(:one)
  end

  test "visiting the index" do
    visit bookstatuses_url
    assert_selector "h1", text: "Bookstatuses"
  end

  test "creating a Bookstatus" do
    visit bookstatuses_url
    click_on "New Bookstatus"

    fill_in "Available", with: @bookstatus.available
    fill_in "Book name", with: @bookstatus.book_name
    click_on "Create Bookstatus"

    assert_text "Bookstatus was successfully created"
    click_on "Back"
  end

  test "updating a Bookstatus" do
    visit bookstatuses_url
    click_on "Edit", match: :first

    fill_in "Available", with: @bookstatus.available
    fill_in "Book name", with: @bookstatus.book_name
    click_on "Update Bookstatus"

    assert_text "Bookstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookstatus" do
    visit bookstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookstatus was successfully destroyed"
  end
end
