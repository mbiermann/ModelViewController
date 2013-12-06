//
//  MCProductTableViewCell.m
//  ModelViewController
//
//  Created by Martin Biermann on 13/03/15.
//  Copyright (c) 2015 Martin Biermann. All rights reserved.
//

#import "MCProductTableViewCell.h"
#import "UIImageView+UIActivityIndicatorForSDWebImage.h"

@interface MCProductTableViewCell ()

@property IBOutlet UILabel *titleLabel;
@property IBOutlet UIImageView *imageView;

@end

@implementation MCProductTableViewCell

@synthesize imageView;
@synthesize titleLabel;

- (void)prepareForReuse
{
    self.titleLabel.text = nil;
    self.imageView.image = nil;
}

- (void)layoutForName:(NSString *)name priceInCents:(NSUInteger)priceInCents imageWithURL:(NSURL *)url
{
    NSString *labelText = @"unknown";
    if (!!name && ![name isEqualToString:@""] && priceInCents > 0) {
        labelText = [NSString stringWithFormat:@"%@ (only $%.02f)", name, @(priceInCents).floatValue/100];
    }
    self.titleLabel.text = labelText;
    
    [self.imageView setImageWithURL:url usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
}

@end
