require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "init" do
    @user = User.create
    assert true
  end
end
