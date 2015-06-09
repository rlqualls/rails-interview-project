require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  self.use_transactional_fixtures = true

  test "should be valid with a valid address" do
    @email = Email.create(address: "example@example.com")
    assert @email.valid?
  end

  test "should be invalid without an address" do
    @email = Email.create(address: "")
    assert @email.invalid?
  end

  test "should be invalid without a domain or '@'" do
    @email = Email.create(address: "example")
    assert @email.invalid?
  end

  test "should be invalid without a domain" do
    @email = Email.create(address: "example@")
    assert @email.invalid?
  end

  test "should be invalid with only '@'" do
    @email = Email.create(address: "@")
    assert @email.invalid?
  end

  test "should be invalid without a domain suffix" do
    @email = Email.create(address: "example@example")
    assert @email.invalid?
  end

  test "should be invalid wthout the '@' symbol" do
    @email = Email.create(address: "example!example.com")
    assert @email.invalid?
  end

  test "should be invalid wthout the user part of address" do
    @email = Email.create(address: "example.com")
    assert @email.invalid?
  end
end
