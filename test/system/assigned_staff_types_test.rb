require "application_system_test_case"

class AssignedStaffTypesTest < ApplicationSystemTestCase
  setup do
    @assigned_staff_type = assigned_staff_types(:one)
  end

  test "visiting the index" do
    visit assigned_staff_types_url
    assert_selector "h1", text: "Assigned staff types"
  end

  test "should create assigned staff type" do
    visit assigned_staff_types_url
    click_on "New assigned staff type"

    check "Active" if @assigned_staff_type.active
    fill_in "Type", with: @assigned_staff_type.type
    click_on "Create Assigned staff type"

    assert_text "Assigned staff type was successfully created"
    click_on "Back"
  end

  test "should update Assigned staff type" do
    visit assigned_staff_type_url(@assigned_staff_type)
    click_on "Edit this assigned staff type", match: :first

    check "Active" if @assigned_staff_type.active
    fill_in "Type", with: @assigned_staff_type.type
    click_on "Update Assigned staff type"

    assert_text "Assigned staff type was successfully updated"
    click_on "Back"
  end

  test "should destroy Assigned staff type" do
    visit assigned_staff_type_url(@assigned_staff_type)
    click_on "Destroy this assigned staff type", match: :first

    assert_text "Assigned staff type was successfully destroyed"
  end
end
