//
//  YuSuanViewController.h
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UICheakBox.h"


@interface YuSuanViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) NSArray *yusuan;
@property (strong, nonatomic) IBOutlet UICheakBox *c1;
@property (strong, nonatomic) IBOutlet UICheakBox *c2;
@property (strong, nonatomic) IBOutlet UICheakBox *c3;
@property (strong, nonatomic) IBOutlet UICheakBox *c4;
@property (strong, nonatomic) IBOutlet UICheakBox *c5;
@property (strong, nonatomic) IBOutlet UICheakBox *c6;
@property (strong, nonatomic) IBOutlet UICheakBox *c7;
- (IBAction)clear1:(id)sender;
- (IBAction)decide:(id)sender;



@end
