require "application_system_test_case"

class NewdaysTest < ApplicationSystemTestCase
  setup do
    @newday = newdays(:one)
  end

  test "visiting the index" do
    visit newdays_url
    assert_selector "h1", text: "Newdays"
  end

  test "creating a Newday" do
    visit newdays_url
    click_on "New Newday"

    fill_in "Date", with: @newday.date
    fill_in "Doing", with: @newday.doing
    fill_in "Mood", with: @newday.mood
    fill_in "Picture", with: @newday.picture
    fill_in "Title", with: @newday.title
    click_on "Create Newday"

    assert_text "Newday was successfully created"
    click_on "Back"
  end

  test "updating a Newday" do
    visit newdays_url
    click_on "Edit", match: :first

    fill_in "Date", with: @newday.date
    fill_in "Doing", with: @newday.doing
    fill_in "Mood", with: @newday.mood
    fill_in "Picture", with: @newday.picture
    fill_in "Title", with: @newday.title
    click_on "Update Newday"

    assert_text "Newday was successfully updated"
    click_on "Back"
  end

  test "destroying a Newday" do
    visit newdays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newday was successfully destroyed"
  end
end
