//
//  CouponListViewController.m
//  Life Assistant 0.4
//
//  Created by john on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "CouponListViewController.h"

@interface CouponListViewController ()

@end

@implementation CouponListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 84.0;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
        NSString *CouponCellIdentifier = @"CouponCell";
        CouponCell *cell = (CouponCell *)[tableView dequeueReusableCellWithIdentifier:CouponCellIdentifier];
        if (cell== nil)
        {
            NSArray *nibViews = [[NSBundle mainBundle]loadNibNamed:@"CouponCell" owner:self options:nil];
            for (id aView in nibViews)
            {
                if ([aView isKindOfClass:[CouponCell class]]) {
                    cell = (CouponCell *)aView;
                }
            }
        }
        
        cell.NameLable.text = @"一碗香";
        cell.DescriptionLable.text = @"全场8折";
        cell.CountLable.text= @"123";
        //cell.ImageView.image =
        
        return cell;
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

@end
