<?php

// This file defines TCAT-wide constants and should always be included *after* config.php

// Required constants for tcat_query_bins.access variable

if (!defined('TCAT_QUERYBIN_ACCESS_OK')) {
    define('TCAT_QUERYBIN_ACCESS_OK', 0);
    define('TCAT_QUERYBIN_ACCESS_READONLY', 1);
    define('TCAT_QUERYBIN_ACCESS_WRITEONLY', 2);
    define('TCAT_QUERYBIN_ACCESS_INVISIBLE', 3);
}

// Always make UTC the default timezone inside PHP
// This effectively ignores any date_default_timezone_set() in config.php (which is deprecated)

if (!defined('TCAT_CONFIG_DEPRECATED_TIMEZONE')) {

    $current_timezone = date_default_timezone_get();
    if ($current_timezone !== 'UTC') {
        define('TCAT_CONFIG_DEPRECATED_TIMEZONE', 1);
        define('TCAT_CONFIG_DEPRECATED_TIMEZONE_CONFIGURED', $current_timezone);
        date_default_timezone_set('UTC');
    } else {
        define('TCAT_CONFIG_DEPRECATED_TIMEZONE', 0);
        define('TCAT_CONFIG_DEPRECATED_TIMEZONE_CONFIGURED', '');
    }

}
