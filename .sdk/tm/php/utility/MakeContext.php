<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class BuddhaQuotesMakeContext
{
    public static function call(array $ctxmap, ?BuddhaQuotesContext $basectx): BuddhaQuotesContext
    {
        return new BuddhaQuotesContext($ctxmap, $basectx);
    }
}
