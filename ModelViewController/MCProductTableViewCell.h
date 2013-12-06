//
//  MCProductTableViewCell.h
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCProductTableViewCell : UITableViewCell

- (void)layoutForName:(NSString *)name priceInCents:(NSUInteger)priceInCents imageWithURL:(NSURL *)url;

@end
