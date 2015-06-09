require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "init" do
    @email = Email.create
    assert true
  end
end
