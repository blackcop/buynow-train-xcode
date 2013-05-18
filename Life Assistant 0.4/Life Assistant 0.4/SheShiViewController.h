//
//  SheShiViewController.h
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UICheakBox.h"

@interface SheShiViewController : UIViewController

@property(nonatomic,strong) NSArray *sheshi;
@property (strong, nonatomic) IBOutlet UICheakBox *b1;
@property (strong, nonatomic) IBOutlet UICheakBox *b2;
@property (strong, nonatomic) IBOutlet UICheakBox *b3;
@property (strong, nonatomic) IBOutlet UICheakBox *b4;
@property (strong, nonatomic) IBOutlet UICheakBox *b5;
@property (strong, nonatomic) IBOutlet UICheakBox *b6;
- (IBAction)clean3:(id)sender;
- (IBAction)decide3:(id)sender;

@end
