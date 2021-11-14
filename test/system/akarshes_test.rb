require "application_system_test_case"

class AkarshesTest < ApplicationSystemTestCase
  setup do
    @akarsh = akarshes(:one)
  end

  test "visiting the index" do
    visit akarshes_url
    assert_selector "h1", text: "Akarshes"
  end

  test "creating a Akarsh" do
    visit akarshes_url
    click_on "New Akarsh"

    fill_in "Description", with: @akarsh.description
    fill_in "Title", with: @akarsh.title
    click_on "Create Akarsh"

    assert_text "Akarsh was successfully created"
    click_on "Back"
  end

  test "updating a Akarsh" do
    visit akarshes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @akarsh.description
    fill_in "Title", with: @akarsh.title
    click_on "Update Akarsh"

    assert_text "Akarsh was successfully updated"
    click_on "Back"
  end

  test "destroying a Akarsh" do
    visit akarshes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Akarsh was successfully destroyed"
  end
end
