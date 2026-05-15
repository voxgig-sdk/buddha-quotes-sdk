
import { Context } from './Context'


class BuddhaQuotesError extends Error {

  isBuddhaQuotesError = true

  sdk = 'BuddhaQuotes'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  BuddhaQuotesError
}

