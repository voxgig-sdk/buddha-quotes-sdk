"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BuddhaQuotesError = void 0;
class BuddhaQuotesError extends Error {
    isBuddhaQuotesError = true;
    sdk = 'BuddhaQuotes';
    code;
    ctx;
    status = -1;
    // `err.notFound` rather than a magic number at every call site.
    get notFound() { return 404 === this.status; }
    constructor(code, msg, ctx) {
        super(msg);
        this.code = code;
        this.ctx = ctx;
    }
}
exports.BuddhaQuotesError = BuddhaQuotesError;
//# sourceMappingURL=BuddhaQuotesError.js.map