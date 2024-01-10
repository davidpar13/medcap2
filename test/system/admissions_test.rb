require "application_system_test_case"

class AdmissionsTest < ApplicationSystemTestCase
  setup do
    @admission = admissions(:one)
  end

  test "visiting the index" do
    visit admissions_url
    assert_selector "h1", text: "Admissions"
  end

  test "should create admission" do
    visit admissions_url
    click_on "New admission"

    fill_in "Admitted date", with: @admission.admitted_date
    fill_in "Assigned staff", with: @admission.assigned_staff_id
    fill_in "Diagnosis", with: @admission.diagnosis_id
    fill_in "Discharge date", with: @admission.discharge_date
    fill_in "Notes", with: @admission.notes
    click_on "Create Admission"

    assert_text "Admission was successfully created"
    click_on "Back"
  end

  test "should update Admission" do
    visit admission_url(@admission)
    click_on "Edit this admission", match: :first

    fill_in "Admitted date", with: @admission.admitted_date
    fill_in "Assigned staff", with: @admission.assigned_staff_id
    fill_in "Diagnosis", with: @admission.diagnosis_id
    fill_in "Discharge date", with: @admission.discharge_date
    fill_in "Notes", with: @admission.notes
    click_on "Update Admission"

    assert_text "Admission was successfully updated"
    click_on "Back"
  end

  test "should destroy Admission" do
    visit admission_url(@admission)
    click_on "Destroy this admission", match: :first

    assert_text "Admission was successfully destroyed"
  end
end
