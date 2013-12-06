//
//  MCProductListDataSource.h
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MCProduct;

@protocol MCProductListDataSource <NSObject>

- (MCProduct *)productAtIndex:(NSUInteger)index;

@end
