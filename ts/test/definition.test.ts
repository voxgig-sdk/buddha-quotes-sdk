import { describe, test } from 'node:test'
import { SDK } from '..'
import { runDefinitionPoint } from './definition-runner'
import { isControlSkipped } from './utility'


// Generated from the API definition, not from the model this SDK was built
// from: the route, the declared query parameters, the credential the security
// scheme names, and the definition's own response example.
const PLAN: any[] = [
  {
    "entity": "random",
    "accessor": "Random",
    "op": "load",
    "method": "GET",
    "path": "/random",
    "args": [],
    "select": {
      "author": "v1"
    },
    "headers": [],
    "query": [
      "author"
    ],
    "auth": null,
    "status": 200,
    "sample": {
      "quote": "Whatever precious jewel there is in the heavenly worlds, there is nothing comparable to one who is Awakened.",
      "author": "Buddha"
    },
    "idField": "id"
  },
  {
    "entity": "today",
    "accessor": "Today",
    "op": "load",
    "method": "GET",
    "path": "/today",
    "args": [],
    "select": {},
    "headers": [],
    "query": [],
    "auth": null,
    "status": 200,
    "sample": {
      "quote": "One moment can change a day, one day can change a life, and one life can change the world.",
      "author": "Buddha"
    },
    "idField": "id"
  }
]


describe('definition', () => {
  for (const point of PLAN) {
    test(point.entity + '.' + point.op + ' ' + point.method + ' ' + point.path, async (t) => {
      const control = isControlSkipped('entityOp', point.entity + '.' + point.op, 'definition')
      if (control.skip) {
        t.skip(control.reason || 'skipped via sdk-test-control.json')
        return
      }
      await runDefinitionPoint(SDK, point)
    })
  }
})
