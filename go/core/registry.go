package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewRandomEntityFunc func(client *BuddhaQuotesSDK, entopts map[string]any) BuddhaQuotesEntity

var NewTodayEntityFunc func(client *BuddhaQuotesSDK, entopts map[string]any) BuddhaQuotesEntity

