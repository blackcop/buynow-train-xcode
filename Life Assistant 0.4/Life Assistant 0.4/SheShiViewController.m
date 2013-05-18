//
//  SheShiViewController.m
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "SheShiViewController.h"

@interface SheShiViewController ()

@end

@implementation SheShiViewController

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
    
    self.b1.selected=0;
    self.b2.selected=0;
    self.b3.selected=0;
    self.b4.selected=0;
    self.b5.selected=0;
    self.b6.selected=0;
}

- (IBAction)decide3:(id)sender {
    
    NSNumber *c11=[[NSNumber alloc]initWithBool:self.b1.selected];
    NSNumber *c22=[[NSNumber alloc]initWithBool:self.b2.selected];
    NSNumber *c33=[[NSNumber alloc]initWithBool:self.b3.selected];
    NSNumber *c44=[[NSNumber alloc]initWithBool:self.b4.selected];
    NSNumber *c55=[[NSNumber alloc]initWithBool:self.b5.selected];
    NSNumber *c66=[[NSNumber alloc]initWithBool:self.b6.selected];
    
    NSArray *stru=[[NSArray alloc]initWithObjects:c11,c22,c33,c44,c55,c66,nil];
    
    self.sheshi=[[NSArray alloc]initWithArray:stru];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
