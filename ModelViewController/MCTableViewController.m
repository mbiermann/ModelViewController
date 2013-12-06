//
//  MCTableViewController.m
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import "MCTableViewController.h"
#import "MCProductTableViewCell.h"
#import "MCProductListDataSource.h"
#import "MCProduct.h"

@implementation MCTableViewController

NSString *const MCProductTableViewCellReuseIdentifier = @"MCProductTableViewCell";

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSAssert(!!self.productListDataSource, @"Expected product list data source missing");
    if (!self.productListDataSource) return [[UITableViewCell alloc]
                                             initWithStyle:UITableViewCellStyleDefault
                                             reuseIdentifier:nil];
    
    MCProductTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MCProductTableViewCellReuseIdentifier];
    NSAssert(!!cell, @"Expected dequeued reusable cell missing");
    if (!cell) return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    MCProduct *product = [self.productListDataSource productAtIndex:indexPath.row];
    NSAssert(!!product, @"Expected product object missing");
    if (!product) return cell;
    
    [cell layoutForName:product.name
           priceInCents:product.priceInCents
           imageWithURL:product.imageUrl];
    
    return cell;
}

@end
