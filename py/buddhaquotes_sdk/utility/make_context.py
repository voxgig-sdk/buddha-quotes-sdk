# BuddhaQuotes SDK utility: make_context

from buddhaquotes_sdk.core.context import BuddhaQuotesContext


def make_context_util(ctxmap, basectx):
    return BuddhaQuotesContext(ctxmap, basectx)
