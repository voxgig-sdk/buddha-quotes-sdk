
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BuddhaQuotesSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = BuddhaQuotesSDK.test()
    equal(testsdk instanceof BuddhaQuotesSDK, true,
      'BuddhaQuotesSDK.test() must return a client synchronously')
  })

})
