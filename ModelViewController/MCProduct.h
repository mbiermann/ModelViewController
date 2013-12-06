//
//  MCProduct.h
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCProduct : NSObject

@property (readonly) NSString *name;
@property (readonly) NSUInteger priceInCents;
@property (readonly) NSURL *imageUrl;

@end
