-- Typed models for the BuddhaQuotes SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Random
---@field author string
---@field quote string

---@class RandomLoadMatch
---@field author? string
---@field quote? string

---@class Today
---@field author string
---@field quote string

---@class TodayLoadMatch
---@field author? string
---@field quote? string

local M = {}

return M
