require 'test_helper'

class InstitutionTest < ActiveSupport::TestCase
  test "should not create institution without name" do
    institution = Institution.new
    # institution.name = "United States Military Academy"
    institution.city = "West Point"
    institution.country = "USA"
    assert_not institution.save, "Saved institution without a name"
  end

  test "should not create institution without city" do
    institution = Institution.new
    institution.name = "United States Military Academy"
    # institution.city = "West Point"
    institution.country = "USA"
    assert_not institution.save, "Saved institution without a city"
  end

  test "should not create institution without country" do
    institution = Institution.new
    institution.name = "United States Military Academy"
    institution.city = "West Point"
    # institution.country = "USA"
    assert_not institution.save, "Saved institution without a country"
  end
end
