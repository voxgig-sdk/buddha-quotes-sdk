<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility: prepare_body

class BuddhaQuotesPrepareBody
{
    public static function call(BuddhaQuotesContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
