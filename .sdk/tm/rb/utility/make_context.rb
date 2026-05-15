# BuddhaQuotes SDK utility: make_context
require_relative '../core/context'
module BuddhaQuotesUtilities
  MakeContext = ->(ctxmap, basectx) {
    BuddhaQuotesContext.new(ctxmap, basectx)
  }
end
