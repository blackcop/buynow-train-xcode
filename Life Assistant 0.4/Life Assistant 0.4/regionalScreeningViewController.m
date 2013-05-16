//
//  regionalScreeningViewController.m
//  Life Assistant 0.4
//
//  Created by 邦盛 on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "regionalScreeningViewController.h"

@interface regionalScreeningViewController ()


@end

@implementation regionalScreeningViewController

@synthesize regional;

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
    self.regional=[[NSArray alloc]
                   initWithObjects:@"周围区域", @"北京商圈",@"上海商圈",@"杭州商圈",nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return [self.regional count];
            break;
            
        default:
            return 0;
            break;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return nil;
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    if (row == 0)
    {
        [self.navigationController popViewControllerAnimated:YES];
        return nil;
    }
    
    return indexPath;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    RegionalTableViewCell *cell=(RegionalTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"regionalCell"];
    
    if (cell== nil)
    {
        NSArray *nibViews = [[NSBundle mainBundle]loadNibNamed:@"RegionalTableViewCell" owner:self options:nil];
        for (id aView in nibViews)
        {
            if ([aView isKindOfClass:[RegionalTableViewCell class]]) {
                cell = (RegionalTableViewCell *)aView;
            }
        }
    }
    
    switch (indexPath.section) {
        case 0:
            cell.lable2.text=[self.regional objectAtIndex:indexPath.row];
            break;
            
        default:
            cell.lable2.text=@"unkown";
            break;
    }
    return cell;
}


@end
