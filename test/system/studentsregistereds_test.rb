require "application_system_test_case"

class StudentsregisteredsTest < ApplicationSystemTestCase
  setup do
    @studentsregistered = studentsregistereds(:one)
  end

  test "visiting the index" do
    visit studentsregistereds_url
    assert_selector "h1", text: "Studentsregistereds"
  end

  test "creating a Studentsregistered" do
    visit studentsregistereds_url
    click_on "New Studentsregistered"

    fill_in "Book availed", with: @studentsregistered.book_availed
    fill_in "Branch", with: @studentsregistered.branch
    fill_in "Contact", with: @studentsregistered.contact
    fill_in "Exceeded duration", with: @studentsregistered.exceeded_duration
    fill_in "First name", with: @studentsregistered.first_name
    fill_in "Last name", with: @studentsregistered.last_name
    click_on "Create Studentsregistered"

    assert_text "Studentsregistered was successfully created"
    click_on "Back"
  end

  test "updating a Studentsregistered" do
    visit studentsregistereds_url
    click_on "Edit", match: :first

    fill_in "Book availed", with: @studentsregistered.book_availed
    fill_in "Branch", with: @studentsregistered.branch
    fill_in "Contact", with: @studentsregistered.contact
    fill_in "Exceeded duration", with: @studentsregistered.exceeded_duration
    fill_in "First name", with: @studentsregistered.first_name
    fill_in "Last name", with: @studentsregistered.last_name
    click_on "Update Studentsregistered"

    assert_text "Studentsregistered was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentsregistered" do
    visit studentsregistereds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentsregistered was successfully destroyed"
  end
end
