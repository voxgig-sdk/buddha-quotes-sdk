import { BuddhaQuotesEntityBase } from '../BuddhaQuotesEntityBase';
import type { BuddhaQuotesSDK } from '../BuddhaQuotesSDK';
import type { Control } from '../types';
import type { Random, RandomLoadMatch } from '../BuddhaQuotesTypes';
declare class RandomEntity extends BuddhaQuotesEntityBase<Random> {
    constructor(client: BuddhaQuotesSDK, entopts: any);
    make(this: RandomEntity): RandomEntity;
    load(this: any, reqmatch?: RandomLoadMatch, ctrl?: Control): Promise<RandomEntity>;
}
export { RandomEntity };
