package voxgigbuddhaquotessdk

import (
	"github.com/voxgig-sdk/buddha-quotes-sdk/core"
	"github.com/voxgig-sdk/buddha-quotes-sdk/entity"
	"github.com/voxgig-sdk/buddha-quotes-sdk/feature"
	_ "github.com/voxgig-sdk/buddha-quotes-sdk/utility"
)

// Type aliases preserve external API.
type BuddhaQuotesSDK = core.BuddhaQuotesSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type BuddhaQuotesEntity = core.BuddhaQuotesEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type BuddhaQuotesError = core.BuddhaQuotesError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewRandomEntityFunc = func(client *core.BuddhaQuotesSDK, entopts map[string]any) core.BuddhaQuotesEntity {
		return entity.NewRandomEntity(client, entopts)
	}
	core.NewTodayEntityFunc = func(client *core.BuddhaQuotesSDK, entopts map[string]any) core.BuddhaQuotesEntity {
		return entity.NewTodayEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewBuddhaQuotesSDK = core.NewBuddhaQuotesSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
