<?php
declare(strict_types=1);

// BuddhaQuotes SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class BuddhaQuotesFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new BuddhaQuotesBaseFeature();
            case "test":
                return new BuddhaQuotesTestFeature();
            default:
                return new BuddhaQuotesBaseFeature();
        }
    }
}
