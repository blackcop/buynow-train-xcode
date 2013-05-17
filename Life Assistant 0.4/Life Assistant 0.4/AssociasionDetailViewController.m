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

- (void) alertWithTitle: (NSString *)_title_ msg: (NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:_title_
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"

                                          otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SendEmail:(id)sender {
    MFMailComposeViewController* controller = [[MFMailComposeViewController alloc] init];
    controller.mailComposeDelegate = self;
    [controller setToRecipients:[NSArray arrayWithObjects:@"john_tai@foxmail.com",nil]];
    [controller setSubject:@"我想发起一个活动"];
    [controller setMessageBody:@"活动主题、时间、地点：" isHTML:NO];
    if (controller) [self presentModalViewController:controller animated:YES];
}
- (void)mailComposeController:(MFMailComposeViewController*)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError*)error;
{
    if (result == MFMailComposeResultSent) {
        NSLog(@"发送成功!");
    }
    [self dismissModalViewControllerAnimated:YES];
}
@end
