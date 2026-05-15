# BuddhaQuotes SDK exists test

require "minitest/autorun"
require_relative "../BuddhaQuotes_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = BuddhaQuotesSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
