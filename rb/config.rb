# BuddhaQuotes SDK configuration

module BuddhaQuotesConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "BuddhaQuotes",
        "slug" => "buddha-quotes",
        "version" => "0.0.1",
        "target" => "rb",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
          "transport" => "base",
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
              "name" => "author",
              "req" => true,
              "short" => "The author of the quote",
              "type" => "`$STRING`",
            },
            {
              "name" => "quote",
              "req" => true,
              "short" => "The text of the inspirational quote",
              "type" => "`$STRING`",
            },
          ],
          "name" => "random",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "author",
                        "orig" => "author",
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/random",
                  "segments" => [
                    {
                      "lit" => "random",
                    },
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
                  "parts" => [
                    "random",
                  ],
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "today" => {
          "fields" => [
            {
              "name" => "author",
              "req" => true,
              "short" => "The author of the quote",
              "type" => "`$STRING`",
            },
            {
              "name" => "quote",
              "req" => true,
              "short" => "The text of the inspirational quote",
              "type" => "`$STRING`",
            },
          ],
          "name" => "today",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/today",
                  "segments" => [
                    {
                      "lit" => "today",
                    },
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "parts" => [
                    "today",
                  ],
                },
              ],
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
