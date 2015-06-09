require 'test_helper'

class UserTest < ActiveSupport::TestCase
  self.use_transactional_fixtures = true

  test "should be valid with a name" do
    @user = User.create(name: "John")
    assert @user.valid?
  end

  test "should not be valid without a name" do
    @user = User.create(name: "")
    assert @user.invalid?
  end
end
