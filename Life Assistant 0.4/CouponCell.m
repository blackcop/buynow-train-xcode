//
//  CouponCell.m
//  Life Assistant 0.4
//
//  Created by john on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "CouponCell.h"

@implementation CouponCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    UIView *view = [[UIView alloc] initWithFrame:self.frame];
    view.backgroundColor = [UIColor colorWithRed:.6 green:.0 blue:.125 alpha:1.0];
    
    self.selectedBackgroundView = view;
    
    [super setSelected:selected animated:animated];
   
    //[super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
