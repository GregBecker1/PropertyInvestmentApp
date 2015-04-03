require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(firstname: "firstname", lastname: "lastname",  email: "user@example.com", phone: "608-555-1212")
  end
  
  test "should be valid" do
   assert @user.valid?
  end
  
  test "firstname should be present" do
    @user.firstname = "    "
    assert_not @user.valid?
  end
  
  test "lastname should be present" do
    @user.lastname = "    "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end
  
  test "phone should be present" do
    @user.phone = "    "
    assert_not @user.valid?
  end
end