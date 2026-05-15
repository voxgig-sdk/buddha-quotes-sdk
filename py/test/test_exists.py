# ProjectName SDK exists test

import pytest
from buddhaquotes_sdk import BuddhaQuotesSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = BuddhaQuotesSDK.test(None, None)
        assert testsdk is not None
