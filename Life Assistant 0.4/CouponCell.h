//
//  CouponCell.h
//  Life Assistant 0.4
//
//  Created by john on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CouponCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) IBOutlet UILabel *NameLable;
@property (weak, nonatomic) IBOutlet UILabel *DescriptionLable;
@property (weak, nonatomic) IBOutlet UILabel *CountLable;

@end
