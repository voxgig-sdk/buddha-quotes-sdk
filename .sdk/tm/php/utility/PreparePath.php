<?php
declare(strict_types=1);

// BuddhaQuotes SDK utility: prepare_path

class BuddhaQuotesPreparePath
{
    public static function call(BuddhaQuotesContext $ctx): string
    {
        $point = $ctx->point;
        $parts = [];
        if ($point) {
            $p = \Voxgig\Struct\Struct::getprop($point, 'parts');
            if (is_array($p)) {
                $parts = $p;
            }
        }
        return \Voxgig\Struct\Struct::join($parts, '/', true);
    }
}
