# BuddhaQuotes SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

BuddhaQuotesUtility.registrar = ->(u) {
  u.clean = BuddhaQuotesUtilities::Clean
  u.done = BuddhaQuotesUtilities::Done
  u.make_error = BuddhaQuotesUtilities::MakeError
  u.feature_add = BuddhaQuotesUtilities::FeatureAdd
  u.feature_hook = BuddhaQuotesUtilities::FeatureHook
  u.feature_init = BuddhaQuotesUtilities::FeatureInit
  u.fetcher = BuddhaQuotesUtilities::Fetcher
  u.make_fetch_def = BuddhaQuotesUtilities::MakeFetchDef
  u.make_context = BuddhaQuotesUtilities::MakeContext
  u.make_options = BuddhaQuotesUtilities::MakeOptions
  u.make_request = BuddhaQuotesUtilities::MakeRequest
  u.make_response = BuddhaQuotesUtilities::MakeResponse
  u.make_result = BuddhaQuotesUtilities::MakeResult
  u.make_point = BuddhaQuotesUtilities::MakePoint
  u.make_spec = BuddhaQuotesUtilities::MakeSpec
  u.make_url = BuddhaQuotesUtilities::MakeUrl
  u.param = BuddhaQuotesUtilities::Param
  u.prepare_auth = BuddhaQuotesUtilities::PrepareAuth
  u.prepare_body = BuddhaQuotesUtilities::PrepareBody
  u.prepare_headers = BuddhaQuotesUtilities::PrepareHeaders
  u.prepare_method = BuddhaQuotesUtilities::PrepareMethod
  u.prepare_params = BuddhaQuotesUtilities::PrepareParams
  u.prepare_path = BuddhaQuotesUtilities::PreparePath
  u.prepare_query = BuddhaQuotesUtilities::PrepareQuery
  u.result_basic = BuddhaQuotesUtilities::ResultBasic
  u.result_body = BuddhaQuotesUtilities::ResultBody
  u.result_headers = BuddhaQuotesUtilities::ResultHeaders
  u.transform_request = BuddhaQuotesUtilities::TransformRequest
  u.transform_response = BuddhaQuotesUtilities::TransformResponse
}
