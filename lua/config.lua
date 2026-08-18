-- BuddhaQuotes SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "BuddhaQuotes",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
      },
    },
    options = {
      base = "https://buddha-api.com/api",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["random"] = {},
        ["today"] = {},
      },
    },
    entity = {
      ["random"] = {
        ["fields"] = {
          {
            ["name"] = "author",
            ["req"] = true,
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "quote",
            ["req"] = true,
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "random",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "author",
                      ["orig"] = "author",
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/random",
                ["parts"] = {
                  "random",
                },
                ["select"] = {
                  ["exist"] = {
                    "author",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["today"] = {
        ["fields"] = {
          {
            ["name"] = "author",
            ["req"] = true,
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "quote",
            ["req"] = true,
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "today",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {},
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/today",
                ["parts"] = {
                  "today",
                },
                ["select"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
