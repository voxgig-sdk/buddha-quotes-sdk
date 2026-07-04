# Typed models for the BuddhaQuotes SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Random:
    author: str
    quote: str


@dataclass
class RandomLoadMatch:
    author: Optional[str] = None
    quote: Optional[str] = None


@dataclass
class Today:
    author: str
    quote: str


@dataclass
class TodayLoadMatch:
    author: Optional[str] = None
    quote: Optional[str] = None

