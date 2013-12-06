//
//  MCTableViewController.h
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MCProductListDataSource;

@interface MCTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property id<MCProductListDataSource> productListDataSource;

@end
