# BuddhaQuotes SDK feature factory

from buddhaquotes_sdk.feature.base_feature import BuddhaQuotesBaseFeature
from buddhaquotes_sdk.feature.ratelimit_feature import BuddhaQuotesRatelimitFeature
from buddhaquotes_sdk.feature.retry_feature import BuddhaQuotesRetryFeature
from buddhaquotes_sdk.feature.test_feature import BuddhaQuotesTestFeature
from buddhaquotes_sdk.feature.timeout_feature import BuddhaQuotesTimeoutFeature


_FEATURES = {
    "base": lambda: BuddhaQuotesBaseFeature(),
    "ratelimit": lambda: BuddhaQuotesRatelimitFeature(),
    "retry": lambda: BuddhaQuotesRetryFeature(),
    "test": lambda: BuddhaQuotesTestFeature(),
    "timeout": lambda: BuddhaQuotesTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
