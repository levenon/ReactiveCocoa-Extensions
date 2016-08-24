//
//  UITextField+RACTextChangedSignalSuppport.m
//  UDrivingCustomer
//
//  Created by Marke Jave on 16/5/12.
//  Copyright © 2016年 Marike Jave. All rights reserved.
//

#import "UITextField+RACTextChangedSignalSuppport.h"
#import <ReactiveCocoa/NSObject+RACDescription.h>

@implementation UITextField (RACTextChangedSignalSuppport)

- (RACSignal *)rac_textChangedSignal {
    return [[[[self rac_signalForControlEvents:UIControlEventEditingChanged] map:^(UITextField *x) {
        return x.text;
    }] takeUntil:self.rac_willDeallocSignal] setNameWithFormat:@"%@ -rac_textChangedSignal", RACDescription(self)];
}

@end
