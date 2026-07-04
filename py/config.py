# BuddhaQuotes SDK configuration


def make_config():
    return {
        "main": {
            "name": "BuddhaQuotes",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://buddha-api.com/api",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "random": {},
                "today": {},
            },
        },
        "entity": {
      "random": {
        "fields": [
          {
            "active": True,
            "name": "author",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "quote",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
        ],
        "name": "random",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {
                  "query": [
                    {
                      "active": True,
                      "kind": "query",
                      "name": "author",
                      "orig": "author",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "method": "GET",
                "orig": "/random",
                "parts": [
                  "random",
                ],
                "select": {
                  "exist": [
                    "author",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "today": {
        "fields": [
          {
            "active": True,
            "name": "author",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "quote",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
        ],
        "name": "today",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {},
                "method": "GET",
                "orig": "/today",
                "parts": [
                  "today",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
