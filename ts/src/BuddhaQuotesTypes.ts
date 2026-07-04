// Typed models for the BuddhaQuotes SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Random {
  author: string
  quote: string
}

export type RandomLoadMatch = Partial<Random>

export interface Today {
  author: string
  quote: string
}

export type TodayLoadMatch = Partial<Today>

