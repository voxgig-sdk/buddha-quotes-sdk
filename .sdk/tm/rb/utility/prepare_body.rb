# BuddhaQuotes SDK utility: prepare_body
require_relative 'media'
module BuddhaQuotesUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return BuddhaQuotesUtilities.raw_body(ctx.reqdata) if BuddhaQuotesUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
