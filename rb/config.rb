# BuddhaQuotes SDK configuration

module BuddhaQuotesConfig
  def self.make_config
    {
      "main" => {
        "name" => "BuddhaQuotes",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://buddha-api.com/api",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "random" => {},
          "today" => {},
        },
      },
      "entity" => {
        "random" => {
          "fields" => [
            {
              "active" => true,
              "name" => "author",
              "req" => true,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "quote",
              "req" => true,
              "type" => "`$STRING`",
              "index$" => 1,
            },
          ],
          "name" => "random",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "author",
                        "orig" => "author",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "method" => "GET",
                  "orig" => "/random",
                  "parts" => [
                    "random",
                  ],
                  "select" => {
                    "exist" => [
                      "author",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "load",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "today" => {
          "fields" => [
            {
              "active" => true,
              "name" => "author",
              "req" => true,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "quote",
              "req" => true,
              "type" => "`$STRING`",
              "index$" => 1,
            },
          ],
          "name" => "today",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "active" => true,
                  "args" => {},
                  "method" => "GET",
                  "orig" => "/today",
                  "parts" => [
                    "today",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "load",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    BuddhaQuotesFeatures.make_feature(name)
  end
end
