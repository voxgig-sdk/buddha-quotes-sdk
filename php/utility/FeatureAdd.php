<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility: feature_add

class BuddhaQuotesFeatureAdd
{
    public static function call(BuddhaQuotesContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
