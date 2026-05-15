# BuddhaQuotes SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module BuddhaQuotesFeatures
  def self.make_feature(name)
    case name
    when "base"
      BuddhaQuotesBaseFeature.new
    when "test"
      BuddhaQuotesTestFeature.new
    else
      BuddhaQuotesBaseFeature.new
    end
  end
end
