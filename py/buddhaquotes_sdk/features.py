# BuddhaQuotes SDK feature factory

from buddhaquotes_sdk.feature.base_feature import BuddhaQuotesBaseFeature
from buddhaquotes_sdk.feature.test_feature import BuddhaQuotesTestFeature


def _make_feature(name):
    features = {
        "base": lambda: BuddhaQuotesBaseFeature(),
        "test": lambda: BuddhaQuotesTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
