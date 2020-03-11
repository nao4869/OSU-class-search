require 'test_helper'

class MajorTest < ActiveSupport::TestCase
  test "should not create major without institution" do
    major = Major.new
    # major.institution = 1
    major.courses = [1,2,3,4]
    major.reviews = [1,2]
    major.majorname = "Chemical Engineering"
    assert_not major.save, "Saved major without an institution"
  end

  test "should not create major without courses" do
    major = Major.new
    major.institution = 1
    # major.courses = [1,2,3,4]
    major.reviews = [1,2]
    major.majorname = "Chemical Engineering"
    assert_not major.save, "Saved major without courses"
  end

  test "should not create major without reviews" do
    major = Major.new
    major.institution = 1
    major.courses = [1,2,3,4]
    # major.reviews = [1,2]
    major.majorname = "Chemical Engineering"
    assert_not major.save, "Saved major without reviews"
  end

  test "should not create major without majorname" do
    major = Major.new
    major.institution = 1
    major.courses = [1,2,3,4]
    major.reviews = [1,2]
    # major.majorname = "Chemical Engineering"
    assert_not major.save, "Saved major without a majorname"
  end
end
