require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference("Patient.count") do
      post patients_url, params: { patient: { date_of_birth: @patient.date_of_birth, deceased: @patient.deceased, email: @patient.email, first_name: @patient.first_name, language_id: @patient.language_id, last_name: @patient.last_name, middle_initial: @patient.middle_initial, mrn: @patient.mrn, phone: @patient.phone, sex_id: @patient.sex_id, terminated: @patient.terminated } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { date_of_birth: @patient.date_of_birth, deceased: @patient.deceased, email: @patient.email, first_name: @patient.first_name, language_id: @patient.language_id, last_name: @patient.last_name, middle_initial: @patient.middle_initial, mrn: @patient.mrn, phone: @patient.phone, sex_id: @patient.sex_id, terminated: @patient.terminated } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
