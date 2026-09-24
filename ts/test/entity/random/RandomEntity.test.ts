

import Path from 'node:path'
import * as Fs from 'node:fs'

import { test, describe, afterEach } from 'node:test'
import assert from 'node:assert'
import { createLiveTransport } from '../../live-runner'
import { runLiveEntity } from '../../live-entity'


import { BuddhaQuotesSDK, BaseFeature, stdutil } from '../../..'

import {
  envOverride,
  liveClientOptions,
  liveDelay,
  loadEnvLocal,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
  maybeSkipControl,
} from '../../utility'


loadEnvLocal(__dirname + '/../../../.env.local')


describe('RandomEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BUDDHA_QUOTES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BUDDHA_QUOTES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BuddhaQuotesSDK.test()
    const ent = testsdk.Random()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BUDDHA_QUOTES_TEST_LIVE
    for (const op of ['load']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'random.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"author":{"a":true,"h":"Author","n":"author","r":true,"sh":"The author of the quote","t":"`$STRING`","key$":"author","index$":0},"quote":{"a":true,"h":"Quote","n":"quote","r":true,"sh":"The text of the inspirational quote","t":"`$STRING`","key$":"quote","index$":1}},"name":"random","op":{"load":{"input":"data","name":"load","points":[{"a":true,"co":{"id":"GET /random","source":"openapi3","version":2},"g":{"query":[{"a":true,"k":"query","n":"author","or":"author","r":false,"t":"`$STRING`","index$":0}]},"k":"http","m":"GET","o":"/random","q":{"exist":["author"]},"r":{},"s":[{"lit":"random"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"load"}},"relations":{"ancestors":[]},"key$":"random","name__orig":"random","Name":"Random","name_":"random","name-":"random","NAME":"RANDOM","index$":0}, {"active":true,"entity":"random","key$":"BasicRandomFlow","kind":"basic","name":"BasicRandomFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"random_ref01","srcdatavar":"random_ref01_data","suffix":"_dt0"},"m":{},"o":"load","s":[],"v":[{"apply":"TextFieldMark","def":{"mark":"Mark01-random_ref01"}}],"index$":0}]}, 'Random', {"GET /random":{"protocol":"http","operationId":"getRandomQuote","responses":{"200":{"description":"Successful response with a random quote","content":{"application/json":{"schema":{"type":"object","properties":{"quote":{"description":"The text of the inspirational quote","key$":"quote","type":"string"},"author":{"description":"The author of the quote","enum":["Buddha","Dalai Lama","Dogen","Thich Nhat Hanh"],"key$":"author","type":"string"}},"required":["quote","author"],"x-ref":"#/components/schemas/Quote","index$":0},"examples":{"buddha":{"value":{"quote":"Whatever precious jewel there is in the heavenly worlds, there is nothing comparable to one who is Awakened.","author":"Buddha"}},"dogen":{"value":{"quote":"But do not ask me where I am going, As I travel in this limitless world, Where every step I take is my home.","author":"Dogen"}},"thich":{"value":{"quote":"Life is available only in the present moment.","author":"Thich Nhat Hanh"}}}}}},"500":{"description":"Internal server error","content":{"application/json":{"schema":{"type":"object","properties":{"error":{"type":"string","description":"Error message"},"message":{"type":"string","description":"Detailed error description"}},"x-ref":"#/components/schemas/Error"}}}}},"parameters":[{"name":"author","in":"query","description":"Filter quotes by author","required":false,"schema":{"type":"string","enum":["Buddha","Dalai Lama","Dogen","Thich Nhat Hanh"]},"index$":0}],"securitySource":"unspecified"}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select

    let random_ref01_data = Object.values(setup.data.existing.random)[0] as any

    // LOAD
    const random_ref01_ent = client.Random()
    const random_ref01_match_dt0: any = {}
    const random_ref01_data_dt0 = (await random_ref01_ent.load(random_ref01_match_dt0)).data()
    assert(null != random_ref01_data_dt0)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/random/RandomTestData.json')

  // TODO: file ready util needed?
  const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8')

  // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
  const entityData = JSON.parse(entityDataSource)

  options.entity = entityData.existing

  let client = BuddhaQuotesSDK.test(options, extra)
  const struct = client.utility().struct
  const merge = struct.merge
  const transform = struct.transform

  let idmap = transform(
    ['random01','random02','random03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BUDDHA_QUOTES_TEST_RANDOM_ENTID': idmap,
    'BUDDHA_QUOTES_TEST_LIVE': 'FALSE',
    'BUDDHA_QUOTES_TEST_EXPLAIN': 'FALSE',
  })

  idmap = env['BUDDHA_QUOTES_TEST_RANDOM_ENTID']

  const live = 'TRUE' === env.BUDDHA_QUOTES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BUDDHA_QUOTES_TEST_RANDOM_ENTID']
    idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {}
    if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
      throw new Error('Live ENTID must be a JSON object')
    }
    client = new BuddhaQuotesSDK(merge([
      // FIRST, so the generated fields below win: sdk-test-control.json's
      // test.client.options adds to the live client, it does not redirect it.
      liveClientOptions(),
      {
      },
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
      // last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey
      // and server values above and handed the SDK undefined. Harmless
      // while there was nothing in that object; not harmless now.
      extra || {},
      { system: { fetch: transport.fetch } }
    ]))
  }

  const setup = {
    idmap,
    env,
    options,
    client,
    struct,
    data: entityData,
    explain: 'TRUE' === env.BUDDHA_QUOTES_TEST_EXPLAIN,
    live,
    transport,
    now: Date.now(),
  }

  return setup
}
  
