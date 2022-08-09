require "application_system_test_case"

class StrainsTest < ApplicationSystemTestCase
  setup do
    @strain = strains(:one)
  end

  test "visiting the index" do
    visit strains_url
    assert_selector "h1", text: "Strains"
  end

  test "should create strain" do
    visit strains_url
    click_on "New strain"

    fill_in "Name", with: @strain.name
    click_on "Create Strain"

    assert_text "Strain was successfully created"
    click_on "Back"
  end

  test "should update Strain" do
    visit strain_url(@strain)
    click_on "Edit this strain", match: :first

    fill_in "Name", with: @strain.name
    click_on "Update Strain"

    assert_text "Strain was successfully updated"
    click_on "Back"
  end

  test "should destroy Strain" do
    visit strain_url(@strain)
    click_on "Destroy this strain", match: :first

    assert_text "Strain was successfully destroyed"
  end
end
