<?php
declare(strict_types=1);

// Typed models for the BuddhaQuotes SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Random entity data model. */
class Random
{
    public string $author;
    public string $quote;
}

/** Request payload for Random#load. */
class RandomLoadMatch
{
    public ?string $author = null;
    public ?string $quote = null;
}

/** Today entity data model. */
class Today
{
    public string $author;
    public string $quote;
}

/** Request payload for Today#load. */
class TodayLoadMatch
{
    public ?string $author = null;
    public ?string $quote = null;
}

