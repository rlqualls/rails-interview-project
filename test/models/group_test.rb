require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test "init" do
    @group = Group.create
    assert true
  end
end
