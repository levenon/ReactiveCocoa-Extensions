//
//  UITextField+RACTextChangedSignalSuppport.h
//  UDrivingCustomer
//
//  Created by Marke Jave on 16/5/12.
//  Copyright © 2016年 Marike Jave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface UITextField (RACTextChangedSignalSuppport)

- (RACSignal *)rac_textChangedSignal;

@end
