require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "should not create review without course" do
    review = Review.new
    # review.course = 1
    review.reviews_content = "this is the body of the review"
    review.difficulty = 5
    review.benefit = 4
    review.time_spent = 3
    assert_not review.save, "Saved review without a course"
  end

  test "should not create review without review content" do
    review = Review.new
    review.course = 1
    # review.reviews_content = "this is the body of the review"
    review.difficulty = 5
    review.benefit = 4
    review.time_spent = 3
    assert_not review.save, "Saved review without review content"
  end

  test "should not create review without difficulty" do
    review = Review.new
    review.course = 1
    review.reviews_content = "this is the body of the review"
    # review.difficulty = 5
    review.benefit = 4
    review.time_spent = 3
    assert_not review.save, "Saved review without difficulty"
  end

  test "should not create review without benefit" do
    review = Review.new
    review.course = 1
    review.reviews_content = "this is the body of the review"
    review.difficulty = 5
    # review.benefit = 4
    review.time_spent = 3
    assert_not review.save, "Saved review without benefit"
  end

  test "should not create review without time_spent" do
    review = Review.new
    review.course = 1
    review.reviews_content = "this is the body of the review"
    review.difficulty = 5
    review.benefit = 4
    # review.time_spent = 3
    assert_not review.save, "Saved review without time_spent"
  end
end
