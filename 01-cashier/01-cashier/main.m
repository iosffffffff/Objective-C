//
//  main.m
//  01-cashier
//
//  Created by iosffffffff on 2017/8/15.
//  Copyright © 2017年 iosffffffff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *fruit = @{
                                @"fruit1" : @(arc4random_uniform(100)),
                                @"fruit2" : @(arc4random_uniform(100))
                                };
        CGFloat amount = 0;
        for (NSString *key in [fruit allKeys]) {
            if ([key isEqualToString:@"fruit1"]) {
                amount += 2 * [fruit[key] integerValue];
                NSLog(@"fruit1 = %@", fruit[key]);
                NSLog(@"amount = %@", @(amount));
            }
            else if ([key isEqualToString:@"fruit2"]) {
                amount += 0.01 * [fruit[key] integerValue];
                NSLog(@"fruit2 = %@", fruit[key]);
                NSLog(@"amount = %@", @(amount));
            }
        }
        NSLog(@"amount = %@", @(amount));
    }
    return 0;
}
