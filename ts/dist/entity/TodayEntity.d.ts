import { BuddhaQuotesEntityBase } from '../BuddhaQuotesEntityBase';
import type { BuddhaQuotesSDK } from '../BuddhaQuotesSDK';
import type { Control } from '../types';
import type { Today, TodayLoadMatch } from '../BuddhaQuotesTypes';
declare class TodayEntity extends BuddhaQuotesEntityBase<Today> {
    constructor(client: BuddhaQuotesSDK, entopts: any);
    make(this: TodayEntity): TodayEntity;
    load(this: any, reqmatch?: TodayLoadMatch, ctrl?: Control): Promise<TodayEntity>;
}
export { TodayEntity };
