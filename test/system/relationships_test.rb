require "application_system_test_case"

class RelationshipsTest < ApplicationSystemTestCase
  setup do
    @relationship = relationships(:one)
  end

  test "visiting the index" do
    visit relationships_url
    assert_selector "h1", text: "Relationships"
  end

  test "should create relationship" do
    visit relationships_url
    click_on "New relationship"

    check "Active" if @relationship.active
    fill_in "Relationship type", with: @relationship.relationship_type
    click_on "Create Relationship"

    assert_text "Relationship was successfully created"
    click_on "Back"
  end

  test "should update Relationship" do
    visit relationship_url(@relationship)
    click_on "Edit this relationship", match: :first

    check "Active" if @relationship.active
    fill_in "Relationship type", with: @relationship.relationship_type
    click_on "Update Relationship"

    assert_text "Relationship was successfully updated"
    click_on "Back"
  end

  test "should destroy Relationship" do
    visit relationship_url(@relationship)
    click_on "Destroy this relationship", match: :first

    assert_text "Relationship was successfully destroyed"
  end
end
