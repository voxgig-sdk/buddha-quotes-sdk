# frozen_string_literal: true

# Typed models for the BuddhaQuotes SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Random entity data model.
#
# @!attribute [rw] author
#   @return [String]
#
# @!attribute [rw] quote
#   @return [String]
Random = Struct.new(
  :author,
  :quote,
  keyword_init: true
)

# Request payload for Random#load.
#
# @!attribute [rw] author
#   @return [String, nil]
#
# @!attribute [rw] quote
#   @return [String, nil]
RandomLoadMatch = Struct.new(
  :author,
  :quote,
  keyword_init: true
)

# Today entity data model.
#
# @!attribute [rw] author
#   @return [String]
#
# @!attribute [rw] quote
#   @return [String]
Today = Struct.new(
  :author,
  :quote,
  keyword_init: true
)

# Request payload for Today#load.
#
# @!attribute [rw] author
#   @return [String, nil]
#
# @!attribute [rw] quote
#   @return [String, nil]
TodayLoadMatch = Struct.new(
  :author,
  :quote,
  keyword_init: true
)

