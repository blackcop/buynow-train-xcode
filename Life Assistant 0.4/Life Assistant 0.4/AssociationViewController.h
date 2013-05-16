//
//  AssociationViewController.h
//  Life Assistant 0.4
//
//  Created by john on 13-5-16.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssociationViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) NSArray *AssocaitionNotes;

@end
