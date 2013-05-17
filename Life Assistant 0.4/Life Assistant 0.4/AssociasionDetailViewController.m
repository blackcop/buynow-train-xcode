//
//  AssociasionDetailViewController.m
//  Life Assistant 0.4
//
//  Created by john on 13-5-17.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "AssociasionDetailViewController.h"

@interface AssociasionDetailViewController ()

@end

@implementation AssociasionDetailViewController

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
    self.TitleLable.text=@"东京同乡会";
    self.DetailLable.text=@"周六晚上8点国贸门口集合烧烤，大家一起来组队吧。";
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
