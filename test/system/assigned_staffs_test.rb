require "application_system_test_case"

class AssignedStaffsTest < ApplicationSystemTestCase
  setup do
    @assigned_staff = assigned_staffs(:one)
  end

  test "visiting the index" do
    visit assigned_staffs_url
    assert_selector "h1", text: "Assigned staffs"
  end

  test "should create assigned staff" do
    visit assigned_staffs_url
    click_on "New assigned staff"

    check "Active" if @assigned_staff.active
    fill_in "Assigned staff type", with: @assigned_staff.assigned_staff_type_id
    fill_in "First name", with: @assigned_staff.first_name
    fill_in "Last name", with: @assigned_staff.last_name
    click_on "Create Assigned staff"

    assert_text "Assigned staff was successfully created"
    click_on "Back"
  end

  test "should update Assigned staff" do
    visit assigned_staff_url(@assigned_staff)
    click_on "Edit this assigned staff", match: :first

    check "Active" if @assigned_staff.active
    fill_in "Assigned staff type", with: @assigned_staff.assigned_staff_type_id
    fill_in "First name", with: @assigned_staff.first_name
    fill_in "Last name", with: @assigned_staff.last_name
    click_on "Update Assigned staff"

    assert_text "Assigned staff was successfully updated"
    click_on "Back"
  end

  test "should destroy Assigned staff" do
    visit assigned_staff_url(@assigned_staff)
    click_on "Destroy this assigned staff", match: :first

    assert_text "Assigned staff was successfully destroyed"
  end
end
