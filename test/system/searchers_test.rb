require "application_system_test_case"

class SearchersTest < ApplicationSystemTestCase
  setup do
    @searcher = searchers(:one)
  end

  test "visiting the index" do
    visit searchers_url
    assert_selector "h1", text: "Searchers"
  end

  test "creating a Searcher" do
    visit searchers_url
    click_on "New Searcher"

    fill_in "City", with: @searcher.city_id
    fill_in "Country", with: @searcher.country_id
    fill_in "Name", with: @searcher.name
    fill_in "Payment", with: @searcher.payment
    fill_in "Phone", with: @searcher.phone
    fill_in "Profession", with: @searcher.profession
    fill_in "Skills", with: @searcher.skills
    fill_in "Surname", with: @searcher.surname
    fill_in "Valuta", with: @searcher.valuta
    fill_in "Wtime", with: @searcher.wtime
    click_on "Create Searcher"

    assert_text "Searcher was successfully created"
    click_on "Back"
  end

  test "updating a Searcher" do
    visit searchers_url
    click_on "Edit", match: :first

    fill_in "City", with: @searcher.city_id
    fill_in "Country", with: @searcher.country_id
    fill_in "Name", with: @searcher.name
    fill_in "Payment", with: @searcher.payment
    fill_in "Phone", with: @searcher.phone
    fill_in "Profession", with: @searcher.profession
    fill_in "Skills", with: @searcher.skills
    fill_in "Surname", with: @searcher.surname
    fill_in "Valuta", with: @searcher.valuta
    fill_in "Wtime", with: @searcher.wtime
    click_on "Update Searcher"

    assert_text "Searcher was successfully updated"
    click_on "Back"
  end

  test "destroying a Searcher" do
    visit searchers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Searcher was successfully destroyed"
  end
end
