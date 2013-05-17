//
//  UICheakBox.m
//  生活助手
//
//  Created by 盛 邦 on 13-5-9.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "UICheakBox.h"

@implementation UICheakBox

- (void)setBackGroundImage{  
    [self setBackgroundImage:[UIImage imageNamed:@"off.png"] forState:UIControlStateNormal];  
    [self setBackgroundImage:[UIImage imageNamed:@"on.png"] forState:UIControlStateSelected];          
    [self addTarget:self action:@selector(touchUIInside:) forControlEvents:UIControlEventTouchUpInside];  
} 

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];  
    if (self) {  
        [self setBackGroundImage];
    }  
    return self;  
}
 

-(id)initWithCoder:(NSCoder *)aDecoder{  
    self =  [super initWithCoder:aDecoder];  
    if (self) {  
        [self setBackGroundImage];  
    }  
    return self;  
}  


-(IBAction)touchUIInside:(id)sender{  
    UICheakBox *cb= (UICheakBox *)sender;  
    cb.selected = !cb.selected;    
    
}  
@end
