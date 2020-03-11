require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not create user without username" do
    user = User.new
    # user.username = "testuser"
    user.email = "test@test.com"
    user.password = "asdf1234"
    assert_not user.save, "Saved user without a username"
  end

  test "should not create user without email" do
    user = User.new
    user.username = "testuser"
    # user.email = "test@test.com"
    user.password = "asdf1234"
    assert_not user.save, "Saved user without an email"
  end

  test "should not create user without password" do
    user = User.new
    user.username = "testuser"
    user.email = "test@test.com"
    # user.password = "asdf1234"
    assert_not user.save, "Saved user without a password"
  end
end