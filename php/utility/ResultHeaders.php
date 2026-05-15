<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility: result_headers

class BuddhaQuotesResultHeaders
{
    public static function call(BuddhaQuotesContext $ctx): ?BuddhaQuotesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
