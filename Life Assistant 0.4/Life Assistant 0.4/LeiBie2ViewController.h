//
//  LeiBie2ViewController.h
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UICheakBox.h"

@interface LeiBie2ViewController : UIViewController

@property(strong,nonatomic)  NSArray *leibie;
@property (strong, nonatomic) IBOutlet UICheakBox *b1;
@property (strong, nonatomic) IBOutlet UICheakBox *b2;
@property (strong, nonatomic) IBOutlet UICheakBox *b3;
@property (strong, nonatomic) IBOutlet UICheakBox *b4;
- (IBAction)clean1:(id)sender;
- (IBAction)decide1:(id)sender;

@end
