require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "should not create course without coursename" do
    course = Course.new
    # course.coursename = "Organic Chemistry"
    course.course_content = "This is an overview of the substances of the universe and the way they interact"
    assert_not course.save, "Saved course without a coursename"
  end

  test "should not create course without course_content" do
    course = Course.new
    course.coursename = "Organic Chemistry"
    # course.course_content = "This is an overview of the substances of the universe and the way they interact"
    assert_not course.save, "Saved course without a coursename"
  end
end
