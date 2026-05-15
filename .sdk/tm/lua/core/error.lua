-- BuddhaQuotes SDK error

local BuddhaQuotesError = {}
BuddhaQuotesError.__index = BuddhaQuotesError


function BuddhaQuotesError.new(code, msg, ctx)
  local self = setmetatable({}, BuddhaQuotesError)
  self.is_sdk_error = true
  self.sdk = "BuddhaQuotes"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function BuddhaQuotesError:error()
  return self.msg
end


function BuddhaQuotesError:__tostring()
  return self.msg
end


return BuddhaQuotesError
