package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewRatelimitFeatureFunc func() Feature

var NewRetryFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewTimeoutFeatureFunc func() Feature

var NewRandomEntityFunc func(client *BuddhaQuotesSDK, entopts map[string]any) BuddhaQuotesEntity

var NewTodayEntityFunc func(client *BuddhaQuotesSDK, entopts map[string]any) BuddhaQuotesEntity

