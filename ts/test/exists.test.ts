
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BuddhaQuotesSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await BuddhaQuotesSDK.test()
    equal(null !== testsdk, true)
  })

})
