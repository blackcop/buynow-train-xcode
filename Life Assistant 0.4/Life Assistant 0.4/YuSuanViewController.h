//
//  YuSuanViewController.h
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface YuSuanViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) NSArray *yusuan;
@end
