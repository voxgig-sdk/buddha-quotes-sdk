<?php
declare(strict_types=1);

// BuddhaQuotes SDK exists test

require_once __DIR__ . '/../buddhaquotes_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = BuddhaQuotesSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
