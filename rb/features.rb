# BuddhaQuotes SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module BuddhaQuotesFeatures
  def self.make_feature(name)
    case name
    when "base"
      BuddhaQuotesBaseFeature.new
    when "ratelimit"
      BuddhaQuotesRatelimitFeature.new
    when "retry"
      BuddhaQuotesRetryFeature.new
    when "test"
      BuddhaQuotesTestFeature.new
    when "timeout"
      BuddhaQuotesTimeoutFeature.new
    else
      BuddhaQuotesBaseFeature.new
    end
  end
end
