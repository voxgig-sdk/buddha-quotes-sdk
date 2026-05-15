package = "voxgig-sdk-buddha-quotes"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/buddha-quotes-sdk.git"
}
description = {
  summary = "BuddhaQuotes SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["buddha-quotes_sdk"] = "buddha-quotes_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
