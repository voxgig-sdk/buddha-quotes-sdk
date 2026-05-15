<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

BuddhaQuotesUtility::setRegistrar(function (BuddhaQuotesUtility $u): void {
    $u->clean = [BuddhaQuotesClean::class, 'call'];
    $u->done = [BuddhaQuotesDone::class, 'call'];
    $u->make_error = [BuddhaQuotesMakeError::class, 'call'];
    $u->feature_add = [BuddhaQuotesFeatureAdd::class, 'call'];
    $u->feature_hook = [BuddhaQuotesFeatureHook::class, 'call'];
    $u->feature_init = [BuddhaQuotesFeatureInit::class, 'call'];
    $u->fetcher = [BuddhaQuotesFetcher::class, 'call'];
    $u->make_fetch_def = [BuddhaQuotesMakeFetchDef::class, 'call'];
    $u->make_context = [BuddhaQuotesMakeContext::class, 'call'];
    $u->make_options = [BuddhaQuotesMakeOptions::class, 'call'];
    $u->make_request = [BuddhaQuotesMakeRequest::class, 'call'];
    $u->make_response = [BuddhaQuotesMakeResponse::class, 'call'];
    $u->make_result = [BuddhaQuotesMakeResult::class, 'call'];
    $u->make_point = [BuddhaQuotesMakePoint::class, 'call'];
    $u->make_spec = [BuddhaQuotesMakeSpec::class, 'call'];
    $u->make_url = [BuddhaQuotesMakeUrl::class, 'call'];
    $u->param = [BuddhaQuotesParam::class, 'call'];
    $u->prepare_auth = [BuddhaQuotesPrepareAuth::class, 'call'];
    $u->prepare_body = [BuddhaQuotesPrepareBody::class, 'call'];
    $u->prepare_headers = [BuddhaQuotesPrepareHeaders::class, 'call'];
    $u->prepare_method = [BuddhaQuotesPrepareMethod::class, 'call'];
    $u->prepare_params = [BuddhaQuotesPrepareParams::class, 'call'];
    $u->prepare_path = [BuddhaQuotesPreparePath::class, 'call'];
    $u->prepare_query = [BuddhaQuotesPrepareQuery::class, 'call'];
    $u->result_basic = [BuddhaQuotesResultBasic::class, 'call'];
    $u->result_body = [BuddhaQuotesResultBody::class, 'call'];
    $u->result_headers = [BuddhaQuotesResultHeaders::class, 'call'];
    $u->transform_request = [BuddhaQuotesTransformRequest::class, 'call'];
    $u->transform_response = [BuddhaQuotesTransformResponse::class, 'call'];
});
