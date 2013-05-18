//
//  ZongHeViewController.m
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-18.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "ZongHeViewController.h"

@interface ZongHeViewController ()

@end

@implementation ZongHeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clean3:(id)sender {
     self.zonghe.text=nil;
}
- (IBAction)hideKeyboard:(id)sender {
    
    [self.zonghe resignFirstResponder];
   
}

- (IBAction)decide3:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}
@end
