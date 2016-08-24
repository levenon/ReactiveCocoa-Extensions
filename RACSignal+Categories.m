//
//  RACSignal+Categories.m
//  UDrivingCustomer
//
//  Created by dihong on 16/7/19.
//  Copyright © 2016年 Marike Jave. All rights reserved.
//

#import "RACSignal+Categories.h"

@implementation RACSignal (Categories)

- (RACSignal *)collect {
    return [[self aggregateWithStartFactory:^{
        return [[NSMutableArray alloc] init];
    } reduce:^(NSMutableArray *collectedValues, id x) {
        if (x && x != NSNull.null) {
            [collectedValues addObject:x];
        }
        return collectedValues;
    }] setNameWithFormat:@"[%@] -collect", self.name];
}

@end
