//
//  YuSuanViewController.m
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "YuSuanViewController.h"

@interface YuSuanViewController ()

@end

@implementation YuSuanViewController

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




- (IBAction)clear1:(id)sender {
    
    self.c1.selected=0;
    self.c2.selected=0;
    self.c3.selected=0;
    self.c4.selected=0;
    self.c5.selected=0;
    self.c6.selected=0;
    self.c7.selected=0;
}

- (IBAction)decide:(id)sender {
    NSNumber *c11=[[NSNumber alloc]initWithBool:self.c1.selected];
    NSNumber *c22=[[NSNumber alloc]initWithBool:self.c2.selected];
    NSNumber *c33=[[NSNumber alloc]initWithBool:self.c3.selected];
    NSNumber *c44=[[NSNumber alloc]initWithBool:self.c4.selected];
    NSNumber *c55=[[NSNumber alloc]initWithBool:self.c5.selected];
    NSNumber *c66=[[NSNumber alloc]initWithBool:self.c6.selected];
    NSNumber *c77=[[NSNumber alloc]initWithBool:self.c7.selected];
    
    NSArray *stru=[[NSArray alloc]initWithObjects:c11,c22,c33,c44,c55,c66,c77, nil];
    
    self.yusuan=[[NSArray alloc]initWithArray:stru];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
