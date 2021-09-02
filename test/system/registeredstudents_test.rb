require "application_system_test_case"

class RegisteredstudentsTest < ApplicationSystemTestCase
  setup do
    @registeredstudent = registeredstudents(:one)
  end

  test "visiting the index" do
    visit registeredstudents_url
    assert_selector "h1", text: "Registeredstudents"
  end

  test "creating a Registeredstudent" do
    visit registeredstudents_url
    click_on "New Registeredstudent"

    fill_in "Book availed", with: @registeredstudent.book_availed
    fill_in "Branch", with: @registeredstudent.branch
    fill_in "Contact", with: @registeredstudent.contact
    fill_in "Exceeded duration", with: @registeredstudent.exceeded_duration
    fill_in "First name", with: @registeredstudent.first_name
    fill_in "Last", with: @registeredstudent.last
    fill_in "Name", with: @registeredstudent.name
    click_on "Create Registeredstudent"

    assert_text "Registeredstudent was successfully created"
    click_on "Back"
  end

  test "updating a Registeredstudent" do
    visit registeredstudents_url
    click_on "Edit", match: :first

    fill_in "Book availed", with: @registeredstudent.book_availed
    fill_in "Branch", with: @registeredstudent.branch
    fill_in "Contact", with: @registeredstudent.contact
    fill_in "Exceeded duration", with: @registeredstudent.exceeded_duration
    fill_in "First name", with: @registeredstudent.first_name
    fill_in "Last", with: @registeredstudent.last
    fill_in "Name", with: @registeredstudent.name
    click_on "Update Registeredstudent"

    assert_text "Registeredstudent was successfully updated"
    click_on "Back"
  end

  test "destroying a Registeredstudent" do
    visit registeredstudents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registeredstudent was successfully destroyed"
  end
end
