require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  self.use_transactional_fixtures = true

  test "should be valid with a name" do
    @group = Group.create(name: "Test Group")
    assert @group.valid?
  end

  test "should be invalid without a name" do
    @group = Group.create(name: "")
    assert @group.invalid?
  end
end
