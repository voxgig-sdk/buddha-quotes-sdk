import { RandomEntity } from './entity/RandomEntity';
import { TodayEntity } from './entity/TodayEntity';
export type * from './BuddhaQuotesTypes';
import { inspect } from 'node:util';
import type { Context, Feature } from './types';
import { config } from './Config';
import { BuddhaQuotesEntityBase } from './BuddhaQuotesEntityBase';
import { Utility } from './utility/Utility';
import { BaseFeature } from './feature/base/BaseFeature';
declare const stdutil: Utility;
type DirectResult = {
    ok: false;
    err: any;
    status?: undefined;
    headers?: undefined;
    data?: undefined;
} | {
    ok: boolean;
    status: number;
    headers: any;
    data: any;
    err?: any;
};
declare class BuddhaQuotesSDK {
    _mode: string;
    _options: any;
    _utility: Utility;
    _features: Feature[];
    _rootctx: Context;
    constructor(options?: any);
    options(): any;
    utility(): any;
    prepare(fetchargs?: any): Promise<any>;
    direct(fetchargs?: any): Promise<DirectResult>;
    _rawRequest(fetchargs?: any): Promise<DirectResult>;
    graphql(query: string, variables?: any, ctrl?: any): Promise<any>;
    Random(entopts?: Record<string, any>): RandomEntity;
    Today(entopts?: Record<string, any>): TodayEntity;
    static test(testoptsarg?: any, sdkoptsarg?: any): BuddhaQuotesSDK;
    tester(testopts?: any, sdkopts?: any): BuddhaQuotesSDK;
    toJSON(): {
        name: string;
    };
    toString(): string;
    [inspect.custom](): string;
}
declare const SDK: typeof BuddhaQuotesSDK;
export { stdutil, config, BaseFeature, BuddhaQuotesEntityBase, BuddhaQuotesSDK, SDK, };
export type { DirectResult };
