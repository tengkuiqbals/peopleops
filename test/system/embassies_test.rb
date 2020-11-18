require "application_system_test_case"

class EmbassiesTest < ApplicationSystemTestCase
  setup do
    @embassy = embassies(:one)
  end

  test "visiting the index" do
    visit embassies_url
    assert_selector "h1", text: "Embassies"
  end

  test "creating a Embassy" do
    visit embassies_url
    click_on "New Embassy"

    fill_in "Emb description", with: @embassy.emb_description
    fill_in "Emb name", with: @embassy.emb_name
    click_on "Create Embassy"

    assert_text "Embassy was successfully created"
    click_on "Back"
  end

  test "updating a Embassy" do
    visit embassies_url
    click_on "Edit", match: :first

    fill_in "Emb description", with: @embassy.emb_description
    fill_in "Emb name", with: @embassy.emb_name
    click_on "Update Embassy"

    assert_text "Embassy was successfully updated"
    click_on "Back"
  end

  test "destroying a Embassy" do
    visit embassies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Embassy was successfully destroyed"
  end
end
