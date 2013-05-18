//
//  LeiBie2ViewController.m
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "LeiBie2ViewController.h"

@interface LeiBie2ViewController ()

@end

@implementation LeiBie2ViewController

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

- (IBAction)clean1:(id)sender {
    
    self.b1.selected=0;
    self.b2.selected=0;
    self.b3.selected=0;
    self.b4.selected=0;
}

- (IBAction)decide1:(id)sender {
    
    NSNumber *b11=[[NSNumber alloc]initWithBool:self.b1.selected];
    NSNumber *b22=[[NSNumber alloc]initWithBool:self.b2.selected];
    NSNumber *b33=[[NSNumber alloc]initWithBool:self.b3.selected];
    NSNumber *b44=[[NSNumber alloc]initWithBool:self.b4.selected];
    NSArray *arr=[[NSArray alloc] initWithObjects:b11,b22,b33,b44, nil];
    self.leibie=[[NSArray alloc]initWithArray:arr];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
