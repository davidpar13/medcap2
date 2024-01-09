require "application_system_test_case"

class SexesTest < ApplicationSystemTestCase
  setup do
    @sex = sexes(:one)
  end

  test "visiting the index" do
    visit sexes_url
    assert_selector "h1", text: "Sexes"
  end

  test "should create sex" do
    visit sexes_url
    click_on "New sex"

    check "Active" if @sex.active
    fill_in "Sex name", with: @sex.sex_name
    click_on "Create Sex"

    assert_text "Sex was successfully created"
    click_on "Back"
  end

  test "should update Sex" do
    visit sex_url(@sex)
    click_on "Edit this sex", match: :first

    check "Active" if @sex.active
    fill_in "Sex name", with: @sex.sex_name
    click_on "Update Sex"

    assert_text "Sex was successfully updated"
    click_on "Back"
  end

  test "should destroy Sex" do
    visit sex_url(@sex)
    click_on "Destroy this sex", match: :first

    assert_text "Sex was successfully destroyed"
  end
end
