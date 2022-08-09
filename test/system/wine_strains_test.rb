require "application_system_test_case"

class WineStrainsTest < ApplicationSystemTestCase
  setup do
    @wine_strain = wine_strains(:one)
  end

  test "visiting the index" do
    visit wine_strains_url
    assert_selector "h1", text: "Wine strains"
  end

  test "should create wine strain" do
    visit wine_strains_url
    click_on "New wine strain"

    fill_in "Percentage", with: @wine_strain.percentage
    fill_in "Strain", with: @wine_strain.strain_id
    fill_in "Wine", with: @wine_strain.wine_id
    click_on "Create Wine strain"

    assert_text "Wine strain was successfully created"
    click_on "Back"
  end

  test "should update Wine strain" do
    visit wine_strain_url(@wine_strain)
    click_on "Edit this wine strain", match: :first

    fill_in "Percentage", with: @wine_strain.percentage
    fill_in "Strain", with: @wine_strain.strain_id
    fill_in "Wine", with: @wine_strain.wine_id
    click_on "Update Wine strain"

    assert_text "Wine strain was successfully updated"
    click_on "Back"
  end

  test "should destroy Wine strain" do
    visit wine_strain_url(@wine_strain)
    click_on "Destroy this wine strain", match: :first

    assert_text "Wine strain was successfully destroyed"
  end
end
