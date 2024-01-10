require "test_helper"

class AssignedStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assigned_staff = assigned_staffs(:one)
  end

  test "should get index" do
    get assigned_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_assigned_staff_url
    assert_response :success
  end

  test "should create assigned_staff" do
    assert_difference("AssignedStaff.count") do
      post assigned_staffs_url, params: { assigned_staff: { active: @assigned_staff.active, assigned_staff_type_id: @assigned_staff.assigned_staff_type_id, first_name: @assigned_staff.first_name, last_name: @assigned_staff.last_name } }
    end

    assert_redirected_to assigned_staff_url(AssignedStaff.last)
  end

  test "should show assigned_staff" do
    get assigned_staff_url(@assigned_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_assigned_staff_url(@assigned_staff)
    assert_response :success
  end

  test "should update assigned_staff" do
    patch assigned_staff_url(@assigned_staff), params: { assigned_staff: { active: @assigned_staff.active, assigned_staff_type_id: @assigned_staff.assigned_staff_type_id, first_name: @assigned_staff.first_name, last_name: @assigned_staff.last_name } }
    assert_redirected_to assigned_staff_url(@assigned_staff)
  end

  test "should destroy assigned_staff" do
    assert_difference("AssignedStaff.count", -1) do
      delete assigned_staff_url(@assigned_staff)
    end

    assert_redirected_to assigned_staffs_url
  end
end
