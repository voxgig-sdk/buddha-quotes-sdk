# BuddhaQuotes SDK utility: feature_add
module BuddhaQuotesUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
