//
//  MCProduct.m
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import "MCProduct.h"

@implementation MCProduct

- (NSUInteger)priceInCents
{
    return 1999;
}

- (NSString *)name
{
    return @"Nike Air Max";
}

- (NSURL *)imageUrl
{
    return [NSURL URLWithString:@"https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/2/005/0b3/2a9/11ddca1.jpg"];
}

@end
