//
//  SearchResultViewController.m
//  Life Assistant 0.4
//
//  Created by Holmes Wu on 13-5-15.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "SearchResultViewController.h"

@interface SearchResultViewController ()

@end

@implementation SearchResultViewController

@synthesize storeData;

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
    
    //self.storeData=[[NSArray alloc]
          //          initWithObjects:@"日本料理", @"中华料理",@"酒吧",nil];
    [self createStoreFactory ];
    self.navigationItem.title = [NSString stringWithFormat:@"共搜索到%d个商户",[[self.storeData objectAtIndex:0] count] ] ;
    
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
//            return [self.storeData count];
            return [[self.storeData objectAtIndex:section] count];
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

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"storeCell"];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text= [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"name"];
            
            
            cell.imageView.image = [UIImage imageNamed:[[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"picture"]];
            
            
            cell.detailTextLabel.text = [ [NSString alloc]initWithFormat:@"%@%@\n%@\n%@\n%@\n%@",
                                         
                                         [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"category"],
                                         
                                         [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"price"],
                                         
                                         
                                         [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"facility"],
                                         [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"address"],
                                         [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"telephone"],
                                         [[[self.storeData objectAtIndex:indexPath.section]objectAtIndex:indexPath.row] objectForKey:@"coupon"]
                                         ];
            
            
            
            
            
            
            
            break;
            
        default:
            cell.textLabel.text=@"unkown";
            break;
    }
    return cell;
}

- (void)createStoreFactory
{
    
    NSMutableArray *storeMutableArray;
    
    storeMutableArray = [[NSMutableArray alloc] init];
    
    [storeMutableArray addObject:
        [[NSDictionary alloc]
         initWithObjectsAndKeys:
         @"日本料理",@"category",
         @"小豆面馆",@"name",
         @"￥82",@"price",
         @"u9_normal.png",@"picture",
         @"卡 烟 日语 发票 包间 WIFI",@"facility",
         @"地址：朝阳区西坝河光熙门北里34号楼",@"address",
         @"优惠：会员特享，全场88折",@"coupon",
         @"64238422",@"telephone",
         
         
         
         nil

        ]
    ];
    
    [storeMutableArray addObject:
     [[NSDictionary alloc]
      initWithObjectsAndKeys:
      @"中华料理",@"category",
      @"全家",@"name",
      @"￥28",@"price",
      @"u39_normal.png",@"picture",
      @"卡  发票 包间 ",@"facility",
      @"地址：EAC1楼",@"address",
      @"优惠：加2元，送水果",@"coupon",
      @"571-64238422",@"telephone",
      
      
      
      nil
      
      ]
     ];
    
   
    
    
    self.storeData = [[NSArray alloc] initWithObjects:storeMutableArray, nil];
    }





@end
