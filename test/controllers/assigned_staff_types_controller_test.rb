require "test_helper"

class AssignedStaffTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assigned_staff_type = assigned_staff_types(:one)
  end

  test "should get index" do
    get assigned_staff_types_url
    assert_response :success
  end

  test "should get new" do
    get new_assigned_staff_type_url
    assert_response :success
  end

  test "should create assigned_staff_type" do
    assert_difference("AssignedStaffType.count") do
      post assigned_staff_types_url, params: { assigned_staff_type: { active: @assigned_staff_type.active, type: @assigned_staff_type.type } }
    end

    assert_redirected_to assigned_staff_type_url(AssignedStaffType.last)
  end

  test "should show assigned_staff_type" do
    get assigned_staff_type_url(@assigned_staff_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_assigned_staff_type_url(@assigned_staff_type)
    assert_response :success
  end

  test "should update assigned_staff_type" do
    patch assigned_staff_type_url(@assigned_staff_type), params: { assigned_staff_type: { active: @assigned_staff_type.active, type: @assigned_staff_type.type } }
    assert_redirected_to assigned_staff_type_url(@assigned_staff_type)
  end

  test "should destroy assigned_staff_type" do
    assert_difference("AssignedStaffType.count", -1) do
      delete assigned_staff_type_url(@assigned_staff_type)
    end

    assert_redirected_to assigned_staff_types_url
  end
end
