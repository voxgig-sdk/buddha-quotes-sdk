<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility: result_body

class BuddhaQuotesResultBody
{
    public static function call(BuddhaQuotesContext $ctx): ?BuddhaQuotesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
