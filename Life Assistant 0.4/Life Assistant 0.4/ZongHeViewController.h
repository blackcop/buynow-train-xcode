//
//  ZongHeViewController.h
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-18.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZongHeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *zonghe;
- (IBAction)clean3:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *ddecide3;
- (IBAction)hideKeyboard:(id)sender;
- (IBAction)decide3:(id)sender;

@end
