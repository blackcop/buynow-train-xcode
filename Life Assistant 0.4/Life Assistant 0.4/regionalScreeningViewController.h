//
//  regionalScreeningViewController.h
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegionalTableViewCell.h"
#import "RegionalScreeningViewController2.h"

@interface regionalScreeningViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) NSArray *regional;

@end
